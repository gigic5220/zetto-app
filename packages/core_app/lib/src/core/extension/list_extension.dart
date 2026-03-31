import 'dart:collection';

import 'package:flutter/material.dart';

extension ListMixinExtension<E> on ListMixin<E> {
  List<T> mapToList<T>(T Function(E element) f) => map((element) => f(element)).toList();
  List<T> flatToList<T>(T Function(E element) f) => map((element) => f(element)).toList();
}

extension IterableExtension<E> on Iterable<E> {
  List<E> whereToList(bool Function(E element) f) => where((element) => f(element)).toList();
  List<T> mapToList<T>(T Function(E element) f) => map((element) => f(element)).toList();
  List<T> mapToIndexedList<T>(T Function(int index, E element) f) =>
      toList().asMap().map((i, element) => MapEntry(i, f(i, element))).values.toList();
}

extension ListWidgetExtension<T extends Widget> on List<Widget> {
  List<Widget> withSpace({double space = 8.0}) {
    List<Widget> children = [];

    for (int i = 0; i < length * 2 - 1; i++) {
      if (i.isEven) {
        children.add(this[i ~/ 2]);
      } else {
        children.add(SizedBox.square(dimension: space));
      }
    }

    return children;
  }

  List<Widget> withDivider({required Widget divider}) {
    List<Widget> children = [];

    for (int i = 0; i < length * 2 - 1; i++) {
      if (i.isEven) {
        children.add(this[i ~/ 2]);
      } else {
        children.add(divider);
      }
    }

    return children;
  }
}

extension ListExtension on List<int> {
  void diff(
    List<int> other, {
    required void Function(int index) newItem,
    required void Function(int index) removeItem,
  }) {
    final prevIds = toSet();
    final currentIds = other.toSet();

    // Find new items
    for (int i = 0; i < other.length; i++) {
      if (!prevIds.contains(other[i])) {
        newItem(i);
      }
    }

    // Find removed items
    for (int i = 0; i < length; i++) {
      if (!currentIds.contains(this[i])) {
        removeItem(i);
      }
    }
  }
}
