import 'package:flutter/material.dart';

import '../../../components/molecules.dart';

enum DSAutoCompleteSize { medium, small }

typedef DSAutoCompleteBuilder = Widget Function(BuildContext context);

class DSAutoComplete extends StatefulWidget {
  const DSAutoComplete._({required this.size, required this.searchText, required this.builder});

  factory DSAutoComplete.medium({required String searchText, required DSAutoCompleteBuilder builder}) =>
      DSAutoComplete._(size: .medium, searchText: searchText, builder: builder);

  factory DSAutoComplete.small({required String searchText, required DSAutoCompleteBuilder builder}) =>
      DSAutoComplete._(size: .small, searchText: searchText, builder: builder);

  final DSAutoCompleteSize size;
  final String? searchText;
  final DSAutoCompleteBuilder builder;

  static DSAutoComplete? of(BuildContext context) {
    return context.findAncestorWidgetOfExactType<DSAutoComplete>();
  }

  @override
  State<DSAutoComplete> createState() => _DSAutoCompleteState();
}

class _DSAutoCompleteState extends State<DSAutoComplete> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DSListTitle.mediumNormal(title: "'${widget.searchText}' 입력"),
        Expanded(child: widget.builder(context)),
      ],
    );
  }
}
