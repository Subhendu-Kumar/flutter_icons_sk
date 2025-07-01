import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:example/icons/icon_data_id.dart';
import 'package:flutter_icons_sk/flutter_icons_sk.dart';

void copyToClipboard(String data) async {
  await Clipboard.setData(ClipboardData(text: data));
}

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(message)));
}

int getCrossAxisCount(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  if (screenWidth > 1200) {
    return 10;
  } else if (screenWidth > 800) {
    return 8;
  } else if (screenWidth > 600) {
    return 6;
  } else if (screenWidth > 400) {
    return 4;
  } else {
    return 2;
  }
}

Widget buildIcon(IconDataId id, String iconName) {
  switch (id) {
    case IconDataId.antdf:
      return SKIcon.antdf(iconName, width: 24, height: 24);
    case IconDataId.antdo:
      return SKIcon.antdo(iconName, width: 24, height: 24);
    case IconDataId.antdtt:
      return SKIcon.antdtt(iconName, width: 24, height: 24);
    case IconDataId.bootstrap:
      return SKIcon.bootstrap(iconName, width: 24, height: 24);
    case IconDataId.boxl:
      return SKIcon.boxl(iconName, width: 24, height: 24);
    case IconDataId.boxr:
      return SKIcon.boxr(iconName, width: 24, height: 24);
    case IconDataId.boxs:
      return SKIcon.boxs(iconName, width: 24, height: 24);
    case IconDataId.feather:
      return SKIcon.feather(iconName, width: 24, height: 24);
    case IconDataId.flatc:
      return SKIcon.flatc(iconName, width: 24, height: 24);
  }
}

String getPageTitle(String route) {
  switch (route) {
    case '/':
      return 'Home';
    case '/ant-design-filled':
      return 'Ant Design Filled';
    case '/ant-design-outlined':
      return 'Ant Design Outlined';
    case '/ant-design-twotone':
      return 'Ant Design Two Tone';
    case '/bootstrap-icons':
      return 'Bootstrap Icons';
    case '/box-icon-logos':
      return 'Box Icon Logos';
    case '/box-icon-regular':
      return 'Box Icon Regular';
    case '/box-icon-solid':
      return 'Box Icon Solid';
    case '/feather-icons':
      return 'Feather Icons';
    case '/flat-color-icons':
      return 'Flat Color Icons';
    default:
      return 'Home';
  }
}
