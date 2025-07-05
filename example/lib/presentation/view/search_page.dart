import 'package:flutter/material.dart';
import 'package:example/icons/icons.dart';
import 'package:example/icons/icon_search.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool _isSearching = false;
  List<IconSearchResult> _searchResults = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    final query = _searchController.text.trim();
    try {
      setState(() {
        _isSearching = query.isNotEmpty;
        _searchResults = _isSearching
            ? IconSearchService.searchIcons(query: query, iconFamilies: icons)
            : [];
      });
    } catch (e) {
      debugPrint('Error in search: $e');
      setState(() {
        _isSearching = false;
        _searchResults = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
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
                      "Search Icons",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1A1A1A),
                        letterSpacing: -0.5,
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
                          controller: _searchController,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 100),
            Center(
              child: Text(
                _searchResults.isNotEmpty
                    ? _searchResults[0].familyName
                    : "search page",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
