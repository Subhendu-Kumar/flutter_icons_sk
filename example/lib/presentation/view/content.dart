import 'package:flutter/material.dart';
import 'package:example/utils/utils.dart';
import 'package:example/icons/icon_data_i.dart';
import 'package:flutter_icons_sk/flutter_icons_sk.dart';
import 'package:example/presentation/widgets/icon_card.dart';
import 'package:example/presentation/widgets/info_section.dart';

class Content extends StatefulWidget {
  final IconDataI iconData;
  const Content({super.key, required this.iconData});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  late String query;

  @override
  void initState() {
    super.initState();
    query = "";
  }

  @override
  Widget build(BuildContext context) {
    final List<String> filteredIcons = widget.iconData.icons
        .where((icon) => icon.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
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
                    if (MediaQuery.of(context).size.width >= 1200)
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.blue[50],
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SKIcon.flatc("info", width: 20, height: 20),
                              SizedBox(width: 8),
                              Text(
                                "Click the icon box to copy the icon name",
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    if (MediaQuery.of(context).size.width >= 1024)
                      Flexible(
                        child: SizedBox(
                          width: 300,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search icons...',
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 12,
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF1A1A1A),
                            ),
                            onChanged: (value) {
                              setState(() {
                                query = value;
                              });
                            },
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
                padding: EdgeInsets.all(16),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "import 'package:flutter_icons_sk/flutter_icons_sk.dart';",
                                style: TextStyle(
                                  fontFamily: 'My awesome monospace font',
                                  fontSize: 14,
                                  color: Colors.greenAccent,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                widget.iconData.useCase,
                                style: TextStyle(
                                  fontFamily: 'My awesome monospace font',
                                  fontSize: 14,
                                  color: Colors.greenAccent,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    IconButton(
                      onPressed: () {
                        copyToClipboard(widget.iconData.useCase);
                        showSnackBar(context, "Use Case copied!");
                      },
                      icon: Icon(Icons.copy, color: Colors.white70, size: 18),
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
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: getCrossAxisCount(context),
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.8,
                ),
                itemCount: filteredIcons.length,
                itemBuilder: (context, index) {
                  return IconCard(
                    iconName: filteredIcons[index],
                    id: widget.iconData.id,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
