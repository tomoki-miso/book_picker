import 'package:book_picker/features/search_books/search_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchTextField extends ConsumerWidget {
  const SearchTextField({
    required this.controller,
    required this.onChanged,
    required this.onSubmitted,
    required this.searchType,
    super.key,
  });

  final SearchType searchType;
  final TextEditingController? controller;
  final ValueChanged<String> onSubmitted;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) => SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: TextField(
          controller: controller,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          decoration: InputDecoration(hintText: searchType.displayName),
        ),
      );
}
