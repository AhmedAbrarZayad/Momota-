import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:momota/strings/strings.dart';

class CustomSearchBar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: AppStrings.searchHint,
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.voice_chat)
        ),
      ),
    );
  }
}