import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:example/icons/icon_data_i.dart';
import 'package:flutter_highlight/themes/idea.dart';
import 'package:example/utils/get_cross_axis_count.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:example/utils/calculate_grid_height.dart';
import 'package:example/presentation/widgets/icon_card.dart';
import 'package:example/presentation/widgets/info_section.dart';

class Content extends StatefulWidget {
  final IconDataI iconData;
  const Content({super.key, required this.iconData});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity, // or specific width
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        widget.iconData.title,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1A1A1A),
                          letterSpacing: -0.5,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "Click the icon box to copy the icon name",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              InfoSection(
                title: 'License:',
                content: widget.iconData.license,
                linkColor: Colors.blue[600]!,
              ),
              SizedBox(height: 10),
              InfoSection(
                title: 'Project:',
                content: widget.iconData.projectUrl,
                linkColor: Colors.blue[600]!,
              ),
              SizedBox(height: 10),
              Text(
                'Usage!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1A1A1A),
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HighlightView(
                            "import 'package:flutter_icons_sk/flutter_icons_sk.dart';",
                            language: 'dart',
                            theme: ideaTheme,
                            padding: const EdgeInsets.all(6),
                            textStyle: TextStyle(
                              fontFamily: 'My awesome monospace font',
                              fontSize: 14,
                            ),
                          ),
                          HighlightView(
                            widget.iconData.useCase,
                            language: 'dart',
                            theme: ideaTheme,
                            padding: const EdgeInsets.all(6),
                            textStyle: TextStyle(
                              fontFamily: 'My awesome monospace font',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Clipboard.setData(
                          ClipboardData(text: widget.iconData.useCase),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Use Case copied!')),
                        );
                      },
                      child: Icon(Icons.copy, color: Colors.white70, size: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Icons',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1A1A1A),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: calculateGridHeight(
                  context,
                  widget.iconData.icons.length,
                  0.8,
                ),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: getCrossAxisCount(context),
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: widget.iconData.icons.length,
                  itemBuilder: (context, index) {
                    return IconCard(
                      iconName: widget.iconData.icons[index],
                      id: widget.iconData.id,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
