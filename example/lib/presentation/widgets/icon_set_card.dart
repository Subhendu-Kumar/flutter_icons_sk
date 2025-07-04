import 'package:flutter/material.dart';
import 'package:example/utils/utils.dart';
import 'package:go_router/go_router.dart';
import 'package:example/icons/icon_data_id.dart';

class IconSetCard extends StatelessWidget {
  final String title;
  final String route;
  final String count;
  final IconDataId id;
  final List<String> icons;

  const IconSetCard({
    super.key,
    required this.id,
    required this.route,
    required this.title,
    required this.count,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(route);
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey[200]!),
            boxShadow: [
              BoxShadow(
                // ignore: deprecated_member_use
                color: Colors.grey.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2D3748),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                count,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: Wrap(
                  spacing: 8,
                  children: [...icons.map((icon) => buildIcon(id, icon))],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
