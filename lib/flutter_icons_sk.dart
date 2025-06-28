import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Icon families supported by SKIcon
enum IconFamily {
  /// Font Awesome 6 Solid icons
  antDesignFilled(
    'https://raw.githubusercontent.com/ant-design/ant-design-icons/refs/heads/master/packages/icons-svg/svg/filled',
  ),

  antDesignOutined(
    'https://raw.githubusercontent.com/ant-design/ant-design-icons/refs/heads/master/packages/icons-svg/svg/outlined',
  ),

  antDesignTwotone(
    'https://raw.githubusercontent.com/ant-design/ant-design-icons/refs/heads/master/packages/icons-svg/svg/twotone',
  );

  const IconFamily(this.baseUrl);

  final String baseUrl;
}

/// A Flutter package for rendering remote SVG icons dynamically
class SKIcon extends StatelessWidget {
  /// The icon family
  final IconFamily family;

  /// The icon name
  final String iconName;

  /// The width of the icon
  final double? width;

  /// The height of the icon
  final double? height;

  /// The color to apply to the icon
  final Color? color;

  /// The semantic label for accessibility
  final String? semanticsLabel;

  /// Fit behavior for the SVG
  final BoxFit fit;

  /// Alignment of the SVG within its bounds
  final Alignment alignment;

  /// Whether to allow drawing outside the clip rect
  final bool allowDrawingOutsideViewBox;

  /// Placeholder widget to show while loading
  final Widget? placeholder;

  /// Widget to show when there's an error loading the SVG
  final Widget? errorWidget;

  const SKIcon({
    super.key,
    required this.family,
    required this.iconName,
    this.width,
    this.height,
    this.color,
    this.semanticsLabel,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    this.allowDrawingOutsideViewBox = false,
    this.placeholder,
    this.errorWidget,
  });

  /// Get the complete URL for the icon
  String get url {
    return '${family.baseUrl}/$iconName.svg';
  }

  @override
  Widget build(BuildContext context) {
    return SvgPicture.network(
      url,
      width: width,
      height: height,
      colorFilter: color != null
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : null,
      semanticsLabel: semanticsLabel ?? '$iconName icon',
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholder != null
          ? (context) => placeholder!
          : (context) => Container(
              width: width ?? 24,
              height: height ?? 24,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
              child: const Icon(Icons.image, size: 12, color: Colors.grey),
            ),
    );
  }

  /// Copy this icon with different properties
  SKIcon copyWith({
    IconFamily? family,
    String? iconName,
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
    BoxFit? fit,
    Alignment? alignment,
    bool? allowDrawingOutsideViewBox,
    Widget? placeholder,
    Widget? errorWidget,
  }) {
    return SKIcon(
      family: family ?? this.family,
      iconName: iconName ?? this.iconName,
      width: width ?? this.width,
      height: height ?? this.height,
      color: color ?? this.color,
      semanticsLabel: semanticsLabel ?? this.semanticsLabel,
      fit: fit ?? this.fit,
      alignment: alignment ?? this.alignment,
      allowDrawingOutsideViewBox:
          allowDrawingOutsideViewBox ?? this.allowDrawingOutsideViewBox,
      placeholder: placeholder ?? this.placeholder,
      errorWidget: errorWidget ?? this.errorWidget,
    );
  }

  // Convenient static methods for different families

  /// Ant Design Icons
  static SKIcon antdf(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.antDesignFilled,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static SKIcon antdo(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.antDesignOutined,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static SKIcon antdtt(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.antDesignTwotone,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  /// Create a custom icon from any URL
  static Widget custom(
    String url, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
    BoxFit fit = BoxFit.contain,
    Alignment alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    Widget? placeholder,
    Widget? errorWidget,
  }) {
    return SvgPicture.network(
      url,
      width: width,
      height: height,
      colorFilter: color != null
          ? ColorFilter.mode(color, BlendMode.srcIn)
          : null,
      semanticsLabel: semanticsLabel,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholder != null
          ? (context) => placeholder
          : (context) => Container(
              width: width ?? 24,
              height: height ?? 24,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
              child: const Icon(Icons.image, size: 12, color: Colors.grey),
            ),
    );
  }
}
