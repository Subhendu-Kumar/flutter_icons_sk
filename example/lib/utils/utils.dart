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
  } else if (screenWidth > 900) {
    return 8;
  } else if (screenWidth > 768) {
    return 6;
  } else if (screenWidth > 610) {
    return 4;
  } else {
    return 3;
  }
}

int getHomePageCrossAxisCount(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  if (screenWidth >= 1440) {
    return 4;
  } else if (screenWidth > 1024) {
    return 3;
  } else if (screenWidth > 768) {
    return 2;
  } else {
    return 1;
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
    case IconDataId.fontab:
      return SKIcon.fontab(iconName, width: 24, height: 24);
    case IconDataId.fontar:
      return SKIcon.fontar(iconName, width: 24, height: 24);
    case IconDataId.octicon:
      return SKIcon.octicon(iconName, width: 24, height: 24);
    case IconDataId.grommet:
      return SKIcon.grommet(iconName, width: 24, height: 24);
    case IconDataId.heroo:
      return SKIcon.heroo(iconName, width: 24, height: 24);
    case IconDataId.heros:
      return SKIcon.heros(iconName, width: 24, height: 24);
    case IconDataId.icomoon:
      return SKIcon.icomoon(iconName, width: 24, height: 24);
    case IconDataId.icons8:
      return SKIcon.icons8(iconName, width: 24, height: 24);
    case IconDataId.ion:
      return SKIcon.ion(iconName, width: 24, height: 24);
    case IconDataId.radix:
      return SKIcon.radix(iconName, width: 24, height: 24);
    case IconDataId.sline:
      return SKIcon.sline(iconName, width: 24, height: 24);
    case IconDataId.tabf:
      return SKIcon.tabf(iconName, width: 24, height: 24);
    case IconDataId.themify:
      return SKIcon.themify(iconName, width: 24, height: 24);
    case IconDataId.typ:
      return SKIcon.typ(iconName, width: 24, height: 24);
    case IconDataId.vscode:
      return SKIcon.vscode(iconName, width: 24, height: 24);
    case IconDataId.weather:
      return SKIcon.weather(iconName, width: 24, height: 24);
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
    case '/font-awesome-regular':
      return 'Font Awesome Regular';
    case '/font-awesome-brands':
      return 'Font Awesome Brand';
    case '/github-octicons-icons':
      return 'Github Octicons icons';
    case '/grommet-icons':
      return 'Grommet Icons';
    case '/hero-icons-outline':
      return 'Heroicons Outline';
    case '/hero-icons-solid':
      return 'Heroicons Solid';
    case '/ico-moon-free':
      return 'IcoMoon Free';
    case '/redix-ui-icons':
      return 'Radix UI Icons';
    case '/simple-line-icons':
      return 'Simple Line Icons';
    case '/tabler-icons-filled':
      return 'Tabler Icons Filled';
    case '/themify-icons':
      return 'Themify Icons';
    case '/typicons':
      return 'Typicons';
    case '/vscode-icons':
      return 'VS Code Icons';
    case '/weather-icons':
      return 'Weather Icons';
    default:
      return 'Home';
  }
}
