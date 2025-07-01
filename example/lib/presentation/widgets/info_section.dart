import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  final String title;
  final String content;
  final Color linkColor;

  const InfoSection({
    super.key,
    required this.title,
    required this.content,
    required this.linkColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF666666),
          ),
        ),
        SizedBox(width: 8),
        Flexible(
          child: Text(
            content,
            style: TextStyle(
              fontSize: 16,
              color: title == 'License:' ? linkColor : linkColor,
              fontWeight: FontWeight.w500,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
