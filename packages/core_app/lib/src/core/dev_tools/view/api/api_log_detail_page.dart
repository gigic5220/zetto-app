import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../util/api_interceptor.dart';

class ApiLogDetailPage extends StatefulWidget {
  const ApiLogDetailPage({super.key, required this.log});

  final ApiLogInfo log;

  @override
  State<ApiLogDetailPage> createState() => _ApiLogDetailPageState();
}

class _ApiLogDetailPageState extends State<ApiLogDetailPage> with SingleTickerProviderStateMixin {
  late final TabController _tabController = TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(widget.log.requestOptions.path, style: const TextStyle(fontSize: 16)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
            controller: _tabController,
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            indicatorColor: Colors.transparent,
            tabs: const [
              SizedBox(height: 20, child: Text('↑ Request', style: TextStyle(fontSize: 16))),
              SizedBox(height: 20, child: Text('↓ Response', style: TextStyle(fontSize: 16))),
            ],
          ),
          const SizedBox(height: 8),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _RequestView(DateTime.fromMillisecondsSinceEpoch(widget.log.requestTime), widget.log.requestOptions),
                _ResponseView(
                  DateTime.fromMillisecondsSinceEpoch(widget.log.responseTime ?? 0),
                  widget.log.response,
                  widget.log.error,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _RequestView extends StatelessWidget {
  const _RequestView(this.requestTime, this.requestOptions);

  final DateTime requestTime;
  final RequestOptions requestOptions;

  @override
  Widget build(BuildContext context) {
    final headers = requestOptions.headers.map((key, value) => MapEntry(key, value.toString()));
    final body = requestOptions.data;
    final queryParameters = requestOptions.queryParameters;

    return SingleChildScrollView(
      child: SelectableRegion(
        selectionControls: MaterialTextSelectionControls(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 64),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text('Request Time: ', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(requestTime.toString()),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Method: ', style: TextStyle(fontWeight: FontWeight.bold)),
                  Flexible(child: Text(requestOptions.method)),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Content Type: ', style: TextStyle(fontWeight: FontWeight.bold)),
                  Flexible(child: Text(requestOptions.contentType ?? 'Unknown')),
                ],
              ),
              if (body is Map) ...[
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Body: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '{'),
                    ],
                  ),
                ),
                for (final key in body.keys)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('  $key: '),
                      Flexible(child: Text(body[key].toString())),
                    ],
                  ),
                const Text('}'),
              ] else
                Row(
                  children: [
                    const Text('Body: ', style: TextStyle(fontWeight: FontWeight.bold)),
                    Flexible(child: Text(body?.toString() ?? 'Body is empty')),
                  ],
                ),
              if (queryParameters.isEmpty)
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Query Parameters: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'Empty'),
                    ],
                  ),
                )
              else ...[
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Query Parameters: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '{'),
                    ],
                  ),
                ),
                for (final key in queryParameters.keys)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('  $key: '),
                      Flexible(child: Text(queryParameters[key].toString())),
                    ],
                  ),
                const Text('}'),
              ],
              const Text('Headers:', style: TextStyle(fontWeight: FontWeight.bold)),
              for (final key in headers.keys)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.arrow_right, size: 22),
                    Text('$key: ', style: const TextStyle(fontWeight: FontWeight.bold)),
                    Flexible(child: SelectableText(headers[key]!)),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ResponseView<T> extends StatelessWidget {
  const _ResponseView(this.responseTime, this.response, this.error, {super.key});

  final DateTime responseTime;
  final Response<T>? response;
  final DioException? error;

  @override
  Widget build(BuildContext context) {
    final responseValue = response ?? error?.response;
    if (responseValue == null) {
      return const Center(child: Text('No response'));
    }

    final headers = responseValue.headers.map;

    JsonEncoder encoder = const JsonEncoder.withIndent('    ');
    final prettyJson = encoder.convert(responseValue.data);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text('Response Time: ', style: TextStyle(fontWeight: FontWeight.bold)),
                Text(responseTime.toString()),
              ],
            ),
            Row(
              children: [
                const Text('Bytes received: ', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('${responseValue.data.toString().length.toString()} bytes'),
              ],
            ),
            Row(
              children: [
                const Text('Content Type: ', style: TextStyle(fontWeight: FontWeight.bold)),
                Text(responseValue.headers.map['content-type']?.first ?? 'Unknown'),
              ],
            ),
            Row(
              children: [
                const Text('Status Code: ', style: TextStyle(fontWeight: FontWeight.bold)),
                Text(responseValue.statusCode.toString()),
              ],
            ),
            const Text('Headers:', style: TextStyle(fontWeight: FontWeight.bold)),
            for (final key in headers.keys)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.arrow_right, size: 22),
                  Text('$key: ', style: const TextStyle(fontWeight: FontWeight.bold)),
                  Flexible(child: SelectableText(headers[key]!.first)),
                ],
              ),
            const Text('Body: ', style: TextStyle(fontWeight: FontWeight.bold)),
            for (final a in prettyJson.split('\n')) Text(a),
          ],
        ),
      ),
    );
  }
}
