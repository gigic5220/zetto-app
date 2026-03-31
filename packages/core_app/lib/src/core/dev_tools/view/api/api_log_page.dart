import 'package:flutter/material.dart';

import '../../dev_tools.dart';
import '../../util/api_interceptor.dart';
import 'api_log_detail_page.dart';

class ApiLogPage extends StatefulWidget {
  const ApiLogPage({super.key});

  @override
  State<ApiLogPage> createState() => _ApiLogPageState();
}

class _ApiLogPageState extends State<ApiLogPage> {
  final ApiLoggerInterceptor _logger = DevTools.apiLoggerInterceptor;

  @override
  Widget build(BuildContext context) {
    final logs = _logger.logs.values.toList()..sort((a, b) => b.requestTime.compareTo(a.requestTime));

    return Scaffold(
      appBar: AppBar(
        title: const Text('API Logs'),
        centerTitle: false,
        scrolledUnderElevation: 0,
        actions: [IconButton(onPressed: _clear, icon: const Icon(Icons.delete))],
      ),
      body: ListView.separated(
        itemCount: _logger.logs.keys.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          final log = logs[index];

          return _Card(log: log);
        },
      ),
    );
  }

  void _clear() {
    setState(() {
      _logger.logs.clear();
    });
  }
}

class _Card extends StatelessWidget {
  const _Card({required this.log});

  final ApiLogInfo log;

  @override
  Widget build(BuildContext context) {
    final method = log.requestOptions.method;
    final endPoint = log.requestOptions.path;
    final baseUrl = log.requestOptions.baseUrl;
    final requestTime = DateTime.fromMillisecondsSinceEpoch(log.requestTime);
    final duration = log.duration ?? 0;

    final isError = log.response != null && log.response!.statusCode! >= 400;
    final failed = log.response == null;

    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ApiLogDetailPage(log: log)));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '[$method] $endPoint',
                    style: TextStyle(color: isError || failed ? Colors.red : Colors.green, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(baseUrl.startsWith('https') ? Icons.lock : Icons.lock_open, size: 14),
                      const SizedBox(width: 2),
                      Text(baseUrl),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${requestTime.hour.toString().padLeft(2, '0')}:${requestTime.minute.toString().padLeft(2, '0')}:${requestTime.second.toString().padLeft(2, '0')}:${requestTime.millisecond}',
                      ),
                      Text('$duration ms'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            if (failed)
              const Icon(Icons.error, color: Colors.red)
            else
              Text(
                '${log.response!.statusCode}',
                style: TextStyle(color: isError ? Colors.red : Colors.green, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
