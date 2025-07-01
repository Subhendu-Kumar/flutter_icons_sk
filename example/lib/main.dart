import 'package:flutter/material.dart';
import 'package:example/icons/icons.dart';
import 'package:go_router/go_router.dart';
import 'package:example/router/router.dart';
import 'package:example/icons/icon_data_i.dart';
import 'package:example/utils/sidebar_item.dart';
import 'package:example/utils/get_page_title.dart';
import 'package:flutter_icons_sk/flutter_icons_sk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'flutter_icons_sk',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}

class Layout extends StatefulWidget {
  final Widget child;

  const Layout({super.key, required this.child});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  bool _isDrawerOpen = false;
  late final List<SidebarItem> _menuItems;

  List<SidebarItem> _buildSidebarItems(List<IconDataI> icons) {
    return icons.map((icon) {
      return SidebarItem(title: icon.title, route: icon.route);
    }).toList();
  }

  String _getCurrentRoute() {
    return GoRouterState.of(context).uri.toString();
  }

  @override
  void initState() {
    super.initState();
    _menuItems = _buildSidebarItems(icons);
    _menuItems.insert(0, SidebarItem(title: 'Home', route: '/'));
  }

  @override
  Widget build(BuildContext context) {
    final currentRoute = _getCurrentRoute();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          getPageTitle(currentRoute),
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        foregroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        leading: MediaQuery.of(context).size.width < 768
            ? IconButton(
                icon: SKIcon.cssgg(
                  "dock-right",
                  width: 24,
                  height: 24,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onPressed: () {
                  setState(() {
                    _isDrawerOpen = !_isDrawerOpen;
                  });
                },
              )
            : null,
        actions: [
          IconButton(
            icon: SKIcon.antdf(
              "bell",
              width: 24,
              height: 24,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SKIcon.flatc("businessman", width: 24, height: 24),
            onPressed: () {},
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Row(
        children: [
          // Sidebar
          if (MediaQuery.of(context).size.width >= 768 || _isDrawerOpen)
            Container(
              width: 250,
              // ignore: deprecated_member_use
              color: const Color.fromARGB(255, 247, 242, 233).withOpacity(0.3),
              child: Column(
                children: [
                  // Logo/Header section
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        SKIcon.custom(
                          "https://raw.githubusercontent.com/Subhendu-Kumar/Subhendu-Kumar/refs/heads/main/assets/flutter.svg",
                          width: 32,
                          height: 32,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'flutter_icons_sk',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(height: 1),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: _menuItems.length,
                      itemBuilder: (context, index) {
                        final item = _menuItems[index];
                        final isSelected = currentRoute == item.route;

                        return Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Theme.of(
                                    context,
                                    // ignore: deprecated_member_use
                                  ).colorScheme.inversePrimary.withOpacity(0.2)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ListTile(
                            title: Text(
                              item.title,
                              style: TextStyle(
                                color: isSelected
                                    ? Theme.of(context).colorScheme.primary
                                    : Colors.grey[800],
                                fontWeight: isSelected
                                    ? FontWeight.w600
                                    : FontWeight.normal,
                              ),
                            ),
                            onTap: () {
                              context.go(item.route);
                              if (MediaQuery.of(context).size.width < 768) {
                                setState(() {
                                  _isDrawerOpen = false;
                                });
                              }
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

          // Main content area
          Expanded(
            child: Stack(
              children: [
                // Main content
                Container(color: Colors.white, child: widget.child),

                // Overlay for mobile when drawer is open
                if (MediaQuery.of(context).size.width < 768 && _isDrawerOpen)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isDrawerOpen = false;
                      });
                    },
                    // ignore: deprecated_member_use
                    child: Container(color: Colors.black.withOpacity(0.5)),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
