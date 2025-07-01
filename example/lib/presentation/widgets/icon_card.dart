// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:example/icons/icon_data_id.dart';
import 'package:example/utils/show_snackbar.dart';
import 'package:flutter_icons_sk/flutter_icons_sk.dart';

class IconCard extends StatelessWidget {
  final String iconName;
  final IconDataId id;

  const IconCard({super.key, required this.iconName, required this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await Clipboard.setData(ClipboardData(text: iconName));
        showSnackBar(context, 'Icon name copied!  ($iconName)');
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey[200]!),
          boxShadow: [
            BoxShadow(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.04),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (id == IconDataId.antdf)
              SKIcon.antdf(iconName, width: 32, height: 32),
            if (id == IconDataId.antdo)
              SKIcon.antdo(iconName, width: 32, height: 32),
            if (id == IconDataId.antdtt)
              SKIcon.antdtt(iconName, width: 32, height: 32),
            if (id == IconDataId.bootstrap)
              SKIcon.bootstrap(iconName, width: 32, height: 32),
            if (id == IconDataId.boxl)
              SKIcon.boxl(iconName, width: 32, height: 32),
            if (id == IconDataId.boxr)
              SKIcon.boxr(iconName, width: 32, height: 32),
            if (id == IconDataId.boxs)
              SKIcon.boxs(iconName, width: 32, height: 32),
            if (id == IconDataId.feather)
              SKIcon.feather(iconName, width: 32, height: 32),
            if (id == IconDataId.flatc)
              SKIcon.flatc(iconName, width: 32, height: 32),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                iconName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1A1A1A),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
