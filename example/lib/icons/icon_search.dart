import 'package:flutter/material.dart';
import 'package:example/icons/icon_data_i.dart';
import 'package:example/icons/icon_data_id.dart';

class IconSearchResult {
  final String iconName;
  final String familyName;
  final IconDataId familyId;

  IconSearchResult({
    required this.familyId,
    required this.iconName,
    required this.familyName,
  });
}

class IconSearchService {
  static List<IconSearchResult> searchIcons({
    required List<IconDataI> iconFamilies,
    required String query,
  }) {
    if (query.isEmpty || iconFamilies.isEmpty) return [];

    List<IconSearchResult> results = [];
    String lowerQuery = query.toLowerCase().trim();

    try {
      for (IconDataI family in iconFamilies) {
        if (family.icons.isEmpty) continue;

        for (int i = 0; i < family.icons.length; i++) {
          String iconName = family.icons[i];
          if (iconName.toLowerCase().contains(lowerQuery)) {
            results.add(
              IconSearchResult(
                iconName: iconName,
                familyId: family.id,
                familyName: family.title,
              ),
            );
          }
        }
      }
    } catch (e) {
      debugPrint('Error during search: $e');
      return [];
    }

    return results;
  }

  static Map<IconDataId, List<IconSearchResult>> groupResultsByFamily(
    List<IconSearchResult> results,
  ) {
    Map<IconDataId, List<IconSearchResult>> grouped = {};

    try {
      for (IconSearchResult result in results) {
        if (!grouped.containsKey(result.familyId)) {
          grouped[result.familyId] = [];
        }
        grouped[result.familyId]!.add(result);
      }
    } catch (e) {
      debugPrint('Error during grouping: $e');
      return {};
    }

    return grouped;
  }

  static IconDataI? getFamilyById({
    required List<IconDataI> families,
    required IconDataId id,
  }) {
    try {
      return families.firstWhere((family) => family.id == id);
    } catch (e) {
      debugPrint('Family not found for id: $id');
      return null;
    }
  }
}
