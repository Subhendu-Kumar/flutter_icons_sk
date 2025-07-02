import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_icons_sk/src/icon_family.dart';

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
  /// - Filled icons
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

  /// - Outlined icons
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

  /// - Two-tone icons
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

  /// Bootstrap Icons
  static SKIcon bootstrap(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.bootStrapIcons,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  /// Box Icons
  /// - Logos
  /// - Regular icons
  /// - Solid icons
  static SKIcon boxl(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.boxIconsLogos,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static SKIcon boxr(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.boxIconsRegular,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static SKIcon boxs(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.boxIconsSolid,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  /// Css.gg Icons
  static SKIcon cssgg(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.cssggIcons,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  /// Feather Icons
  static SKIcon feather(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.featherIcons,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  /// Flat Color Icons
  static SKIcon flatc(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.flatColorIcons,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  /// Font Awesome Icons
  /// - Brands icons
  /// - Regular icons
  /// - Solid icons
  static SKIcon fontab(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.fontAwesomeBrands,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static SKIcon fontar(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.fontAwesomeRegular,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  /// Octicons Icons
  static SKIcon octicon(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.octiconsIcons,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  /// Grommet Icons
  static SKIcon grommet(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.grommetIcons,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  /// Hero Icons
  /// - Outline Icons
  /// - Solid Icons
  static SKIcon heroo(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.heroIconsOutline,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static SKIcon heros(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.heroIconsSolid,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  /// IcoMoon Free Icons
  static SKIcon icomoon(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.icoMoonFreeIcons,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  /// Icons8 Line Awesome Icons
  static SKIcon icons8(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.icons8LineAwesomeIcons,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  /// Ion Icons
  static SKIcon ion(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.ionIcons,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  /// radix Icons
  static SKIcon radix(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.radixIcons,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  /// Simple Line Icons
  static SKIcon sline(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.simpleLineIcons,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  /// Tabler Icons
  /// - Filled icons
  static SKIcon tabf(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.tablerIconsFilled,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  /// Themify Icons
  static SKIcon themify(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.themifyIcons,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  /// Typ Icons
  static SKIcon typ(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.typIcons,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  /// VS Code Icons
  static SKIcon vscode(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.vsCodeIcons,
      iconName: iconName,
      width: width,
      height: height,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  /// Weather Icons
  static SKIcon weather(
    String iconName, {
    double? width,
    double? height,
    Color? color,
    String? semanticsLabel,
  }) {
    return SKIcon(
      family: IconFamily.weatherIcons,
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
