import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomCard extends ConsumerWidget {
  final String title;
  const CustomCard(this.title, {super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFFF3E8DE),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(title),
    );
  }
}