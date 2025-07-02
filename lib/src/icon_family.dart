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
  /// - Solid icons TODO: will be added soon
  fontAwesomeBrands(
    "https://raw.githubusercontent.com/FortAwesome/Font-Awesome/refs/heads/6.x/svgs/brands",
  ),
  fontAwesomeRegular(
    "https://raw.githubusercontent.com/FortAwesome/Font-Awesome/refs/heads/6.x/svgs/regular",
  ),

  /// Octicons Icons
  octiconsIcons(
    "https://raw.githubusercontent.com/primer/octicons/refs/heads/main/icons",
  ),

  /// Grommet Icons
  grommetIcons(
    "https://raw.githubusercontent.com/grommet/grommet-icons/refs/heads/master/public/img",
  ),

  /// Hero Icons
  /// - Solid Icons
  /// - Outline Icons
  heroIconsOutline(
    "https://raw.githubusercontent.com/tailwindlabs/heroicons/refs/heads/master/optimized/24/outline",
  ),
  heroIconsSolid(
    "https://raw.githubusercontent.com/tailwindlabs/heroicons/refs/heads/master/optimized/24/solid",
  ),

  /// IcoMoon Free Icons
  icoMoonFreeIcons(
    "https://raw.githubusercontent.com/Keyamoon/IcoMoon-Free/refs/heads/master/SVG",
  ),

  /// Icons8 Line Awesome Icons
  icons8LineAwesomeIcons(
    "https://raw.githubusercontent.com/icons8/line-awesome/refs/heads/master/svg",
  ),

  /// Ion Icons
  ionIcons(
    "https://raw.githubusercontent.com/ionic-team/ionicons/refs/heads/main/src/svg",
  ),

  /// Radix Icons
  radixIcons(
    "https://raw.githubusercontent.com/radix-ui/icons/refs/heads/master/packages/radix-icons/icons",
  ),

  /// Simple Line Icons
  simpleLineIcons(
    "https://raw.githubusercontent.com/thesabbir/simple-line-icons/refs/heads/master/src/svgs",
  ),

  /// Tabler Icons
  /// - Filled icons
  tablerIconsFilled(
    "https://raw.githubusercontent.com/tabler/tabler-icons/refs/heads/main/icons/filled",
  ),

  /// Themify Icons
  themifyIcons(
    "https://raw.githubusercontent.com/lykmapipo/themify-icons/refs/heads/master/SVG",
  ),

  /// Typ Icons
  typIcons(
    "https://raw.githubusercontent.com/stephenhutchings/typicons.font/refs/heads/master/src/svg",
  ),

  /// VS Code Icons
  vsCodeIcons(
    "https://raw.githubusercontent.com/microsoft/vscode-codicons/refs/heads/main/src/icons",
  ),

  /// Weather Icons
  weatherIcons(
    "https://raw.githubusercontent.com/erikflowers/weather-icons/refs/heads/master/svg",
  );

  const IconFamily(this.baseUrl);

  final String baseUrl;
}
