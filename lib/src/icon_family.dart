/// Icon families supported by SKIcon
enum IconFamily {
  /// Ant Design Icons
  /// - Filled icons
  /// - Outlined icons
  /// - Two-tone icons
  antDesignFilled(
    'https://raw.githubusercontent.com/ant-design/ant-design-icons/refs/heads/master/packages/icons-svg/svg/filled',
  ),
  antDesignOutined(
    'https://raw.githubusercontent.com/ant-design/ant-design-icons/refs/heads/master/packages/icons-svg/svg/outlined',
  ),
  antDesignTwotone(
    'https://raw.githubusercontent.com/ant-design/ant-design-icons/refs/heads/master/packages/icons-svg/svg/twotone',
  ),

  /// Bootstrap Icons
  bootStrapIcons(
    "https://raw.githubusercontent.com/twbs/icons/refs/heads/main/icons",
  ),

  /// Box Icons
  /// - Logos
  /// - Regular icons
  /// - Solid icons
  boxIconsLogos(
    "https://raw.githubusercontent.com/atisawd/boxicons/refs/heads/master/svg/logos",
  ),
  boxIconsRegular(
    "https://raw.githubusercontent.com/atisawd/boxicons/refs/heads/master/svg/regular",
  ),
  boxIconsSolid(
    "https://raw.githubusercontent.com/atisawd/boxicons/refs/heads/master/svg/solid",
  ),

  /// Css.gg Icons
  cssggIcons(
    "https://raw.githubusercontent.com/astrit/css.gg/refs/heads/main/icons/svg",
  ),

  /// Feather Icons
  featherIcons(
    "https://raw.githubusercontent.com/feathericons/feather/refs/heads/main/icons",
  ),

  /// Flat Color Icons
  flatColorIcons(
    "https://raw.githubusercontent.com/icons8/flat-color-icons/refs/heads/master/svg",
  ),

  /// Font Awesome Icons
  /// - Brands icons
  /// - Regular icons
  fontAwesomeBrands(
    "https://raw.githubusercontent.com/FortAwesome/Font-Awesome/refs/heads/6.x/svgs/brands",
  ),
  fontAwesomeRegular(
    "https://raw.githubusercontent.com/FortAwesome/Font-Awesome/refs/heads/6.x/svgs/regular",
  );

  const IconFamily(this.baseUrl);

  final String baseUrl;
}
