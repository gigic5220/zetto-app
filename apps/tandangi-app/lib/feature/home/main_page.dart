import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';

import 'package:tandangi/api/ai.dart';
import 'package:tandangi/flavors.dart';

Future<void> signOut() async {
  await FirebaseAuth.instance.signOut();
  await GoogleSignIn.instance.signOut();
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String routeName = 'home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _loading = false;
  String? _error;
  Map<String, dynamic>? _result;

  Future<void> _handleLogout() async {
    await signOut();
  }

  Future<void> _pickAndAnalyze() async {
    final XFile? picked = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 85,
      maxWidth: 1280,
    );
    if (picked == null) return;

    setState(() {
      _loading = true;
      _error = null;
      _result = null;
    });

    try {
      final res = await AiApi(
        FlavorInfo.baseUrl,
      ).analyzeImage(imagePath: picked.path);
      setState(() => _result = res);
    } catch (e) {
      setState(() => _error = e.toString());
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          TextButton(onPressed: _handleLogout, child: const Text('Logout')),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: _loading ? null : _pickAndAnalyze,
                    child: _loading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text('🍱 음식 사진 분석'),
                  ),
                ),
                if (_error != null) ...[
                  const SizedBox(height: 12),
                  Text(_error!, style: const TextStyle(color: Colors.red)),
                ],
                if (_result != null) ...[
                  const SizedBox(height: 20),
                  _AnalysisResultCard(result: _result!),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _AnalysisResultCard extends StatelessWidget {
  const _AnalysisResultCard({required this.result});

  final Map<String, dynamic> result;

  @override
  Widget build(BuildContext context) {
    final main = (result['main'] as List?)?.join(', ') ?? '-';
    final sides = (result['sides'] as List?)?.cast<String>() ?? [];
    final nutrients =
        (result['final']?['nutrients'] as Map?)?.cast<String, dynamic>() ?? {};
    final assumptions =
        (result['vision']?['assumptions'] as List?)?.cast<String>() ?? [];

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _SectionTitle('🍽 메인'),
            const SizedBox(height: 4),
            Text(
              main,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),

            if (sides.isNotEmpty) ...[
              const SizedBox(height: 12),
              _SectionTitle('🥗 사이드'),
              const SizedBox(height: 4),
              Text(sides.join(', '), style: const TextStyle(fontSize: 15)),
            ],

            if (nutrients.isNotEmpty) ...[
              const SizedBox(height: 16),
              _SectionTitle('📊 영양 정보'),
              const SizedBox(height: 8),
              _NutrientGrid(nutrients: nutrients),
            ],

            if (assumptions.isNotEmpty) ...[
              const SizedBox(height: 16),
              _SectionTitle('📝 분석 가정'),
              const SizedBox(height: 6),
              ...assumptions.map(
                (a) => Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '• ',
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      Expanded(
                        child: Text(
                          a,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 13,
        color: Colors.grey,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _NutrientGrid extends StatelessWidget {
  const _NutrientGrid({required this.nutrients});

  final Map<String, dynamic> nutrients;

  static const _labels = {
    'kcal': '열량',
    'carb_g': '탄수화물',
    'protein_g': '단백질',
    'fat_g': '지방',
    'sugar_g': '당류',
    'sodium_mg': '나트륨',
  };

  @override
  Widget build(BuildContext context) {
    final items = _labels.entries.map((e) {
      final data = nutrients[e.key] as Map?;
      final value = data?['value'];
      final unit = data?['unit'] ?? '';
      return _NutrientItem(
        label: e.value,
        value: value != null ? '$value $unit' : '-',
      );
    }).toList();

    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 2.2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: items,
    );
  }
}

class _NutrientItem extends StatelessWidget {
  const _NutrientItem({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label, style: const TextStyle(fontSize: 11, color: Colors.grey)),
          const SizedBox(height: 2),
          Text(
            value,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
