import 'package:example/icons/icon_data_i.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/idea.dart';
import 'package:flutter_icons_sk/flutter_icons_sk.dart';

class Content extends StatefulWidget {
  final IconDataI iconData;
  const Content({super.key, required this.iconData});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  Widget _buildInfoSection(String title, String content, Color linkColor) {
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

  Widget _buildIconCard(String name) {
    return GestureDetector(
      onTap: () {
        Clipboard.setData(ClipboardData(text: name));
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Icon name copied!  ($name)')));
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
            if (widget.iconData.id == IconDataId.antdf)
              SKIcon.antdf(name, width: 32, height: 32),
            if (widget.iconData.id == IconDataId.antdo)
              SKIcon.antdo(name, width: 32, height: 32),
            if (widget.iconData.id == IconDataId.antdtt)
              SKIcon.antdtt(name, width: 32, height: 32),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1A1A1A),
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.iconData.title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1A1A1A),
                  letterSpacing: -0.5,
                ),
              ),
              SizedBox(height: 20),
              _buildInfoSection(
                'License:',
                widget.iconData.license,
                Colors.blue[600]!,
              ),
              SizedBox(height: 10),
              _buildInfoSection(
                'Project:',
                widget.iconData.projectUrl,
                Colors.blue[600]!,
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
                height: _calculateGridHeight(
                  context,
                  widget.iconData.icons.length,
                  0.8,
                ),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: _getCrossAxisCount(context),
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: widget.iconData.icons.length,
                  itemBuilder: (context, index) {
                    return _buildIconCard(widget.iconData.icons[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _calculateGridHeight(
    BuildContext context,
    int itemCount,
    double aspectRatio,
  ) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = _getCrossAxisCount(context);

    int rows = (itemCount / crossAxisCount).ceil();
    double itemWidth = screenWidth / crossAxisCount;
    double itemHeight = itemWidth / aspectRatio;

    return rows * itemHeight - rows * 32;
  }

  // Helper method to determine cross axis count based on screen width
  int _getCrossAxisCount(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > 1200) {
      return 10;
    } else if (screenWidth > 800) {
      return 9;
    } else if (screenWidth > 600) {
      return 8;
    } else if (screenWidth > 400) {
      return 7;
    } else {
      return 6;
    }
  }
}
