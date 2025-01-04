import 'package:flutter/material.dart';

class RichTextTwoArgument extends StatelessWidget {
  final String title;
  final String value;

  const RichTextTwoArgument({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          color: Colors.grey,
        ),
        children: [
          TextSpan(
            text: title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: value,
          ),
        ],
      ),
    );
  }
}
