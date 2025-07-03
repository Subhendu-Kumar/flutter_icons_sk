import 'package:flutter/material.dart';
import 'package:example/utils/utils.dart';
import 'package:example/icons/icons.dart';
import 'package:example/icons/icon_data_i.dart';
import 'package:example/presentation/widgets/icon_set_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  final String codeSnippet =
      '''import 'package:flutter_icons_sk/flutter_icons_sk.dart';

AppBar(
  title: Text('My App'),
  actions: [
    Padding(
      padding: EdgeInsets.all(8.0),
      child: SKIcon.antdtt('settings', height: 24, width: 24),
    ),
  ],
);''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Flutter Icons SK',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D3748),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'A Flutter package for rendering remote SVG icons dynamically with support for multiple icon families. Built on top of `flutter_svg` for optimal performance and caching.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF4A5568),
                height: 1.6,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Include icon sets',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D3748),
              ),
            ),
            const SizedBox(height: 20),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: getHomePageCrossAxisCount(context),
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 2,
              ),
              itemCount: icons.length,
              itemBuilder: (context, index) {
                IconDataI iconData = icons[index];
                return IconSetCard(
                  id: iconData.id,
                  title: iconData.title,
                  icons: iconData.icons.take(7).toList(),
                  count: "${iconData.icons.length} icons",
                );
              },
            ),
            const SizedBox(height: 20),
            const Text(
              "Installation (for standard project)",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "flutter pub add flutter_icons_sk",
                    style: TextStyle(
                      fontFamily: 'My awesome monospace font',
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      copyToClipboard("flutter pub add flutter_icons_sk");
                      showSnackBar(context, "installation copied!");
                    },
                    child: Icon(Icons.copy, color: Colors.white70, size: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Usage",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Text(
                        codeSnippet,
                        style: TextStyle(
                          fontFamily: 'My awesome monospace font',
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      copyToClipboard(codeSnippet);
                      showSnackBar(context, "code snippet copied!");
                    },
                    child: Icon(Icons.copy, color: Colors.white70, size: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
