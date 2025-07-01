import 'package:example/icons/icon_data_id.dart';

class IconDataI {
  final IconDataId id;
  final String title;
  final String route;
  final String license;
  final String projectUrl;
  final String useCase;
  final List<String> icons;

  IconDataI({
    required this.id,
    required this.title,
    required this.route,
    required this.license,
    required this.projectUrl,
    required this.useCase,
    required this.icons,
  });
}
