A Flutter package for rendering remote SVG icons dynamically with support for multiple icon families. Built on top of `flutter_svg` for optimal performance and caching.

## Features

- 🚀 Dynamic icon loading from multiple families (Font Awesome, Heroicons, Feather, etc.)
- 🎨 Customizable colors, sizes, and other properties
- 🔧 Smart icon name mapping for different families
- ⚡ Automatic caching via `flutter_svg`
- 🎯 Accessibility support
- 📦 Lightweight and performant

## website

- [Visit Flutter SK Icons Web Page](https://flutter-icons-sk.vercel.app)
- Here you can find all available icons list Family wise!!

## Usage

### Dynamic Icons by Family

```dart
// octicons icons
SKIcon.octicon("alert-fill");

// grommet icons
SKIcon.grommet("brush");

// hero icons
SKIcon.heroo("icon-name");
SKIcon.heros("icon-name");

// ico moon free icons
SKIcon.icomoon("icon-name");

// icons8 line awesome icons
SKIcon.icons8("icon-name");

// ion icons
SKIcon.ion("icon-name");

// radix icons
SKIcon.radix("icon-name");

// simple line icons
SKIcon.sline("icon-name");

// tabler icons
SKIcon.tabf("icon-name");

// themify icons
SKIcon.themify("icon-name");

// typ icons
SKIcon.typ("icon-name");

// vs code icons
SKIcon.vscode("icon-name");

// weather icons
SKIcon.weather("icon-name");
```

```dart
// ant design icons
SKIcon.antdf("account-book");
SKIcon.antdo("aim");
SKIcon.antdtt("alert");

// bootstrap icons
SKIcon.bootstrap("0-circle-fill");

// box icons
SKIcon.boxl("bxl-aws");
SKIcon.boxr("bx-adjust");
SKIcon.boxs("bxs-alarm");

// css.gg icons
SKIcon.cssgg("abstract");

// feather icons
SKIcon.feather("activity");

// flat color icons
SKIcon.flatc("about");

// fontawesome6 icons
SKIcon.fontab("adn");
SKIcon.fontar("bell");
```

### With Customization

```dart
// Custom size and color
SKIcon.fontar("bell",).copyWith(width: 48, height: 48,);
```

### In Widgets

```dart
AppBar(
  title: Text('My App'),
  leading: SKIcon.fa6('home'),
  actions: [
    Padding(
      padding: EdgeInsets.all(8.0),
      child: SKIcon.antdtt('settings'),
    ),
  ],
)
```

### In Buttons

```dart
ElevatedButton.icon(
  onPressed: () {},
  icon: SKIcon.feather("activity",).copyWith(width: 48, height: 48, color: Colors.amber,),
  label: Text('Accept'),
)
```

## Customization Options

All icons support the following customization options:

```dart
SKIcon.custom(
  url: 'https://example.com/icon.svg',
  width: 24.0,                               // Icon width
  height: 24.0,                              // Icon height
  color: Colors.blue,                        // Icon color
  semanticsLabel: 'Home icon',               // Accessibility label
  fit: BoxFit.contain,                       // How to fit the icon
  alignment: Alignment.center,               // Icon alignment
  placeholder: CircularProgressIndicator(),  // Loading placeholder
  errorWidget: Icon(Icons.error),            // Error fallback
)
```

## Icon Sets Used

| Icon Set              | License                    | Project Link                                                        |
| --------------------- | -------------------------- | ------------------------------------------------------------------- |
| Ant Design Icons      | MIT                        | [ant-design-icons](https://github.com/ant-design/ant-design-icons)  |
| Bootstrap Icons       | MIT                        | [twbs/icons](https://github.com/twbs/icons)                         |
| BoxIcons              | MIT                        | [boxicons](https://github.com/atisawd/boxicons)                     |
| css.gg                | MIT                        | [css.gg](https://github.com/astrit/css.gg)                          |
| Feather               | MIT                        | [feathericons.com](https://feathericons.com/)                       |
| Flat Color Icons      | MIT                        | [flat-color-icons](https://github.com/icons8/flat-color-icons)      |
| Font Awesome 6        | CC BY 4.0 License          | [fontawesome.com](https://fontawesome.com/)                         |
| Github Octicons icons | MIT                        | [octicons-icons](https://github.com/primer/octicons)                |
| Grommet-Icons         | Apache License Version 2.0 | [grommet-icons](https://github.com/grommet/grommet-icons)           |
| Heroicons             | MIT                        | [hero-icons](https://github.com/tailwindlabs/heroicons)             |
| IcoMoon Free          | MIT                        | [ico-moon-icons](https://github.com/Keyamoon/IcoMoon-Free)          |
| Icons8 Line Awesome   | MIT                        | [icons8-line-awesome](https://github.com/icons8/line-awesome)       |
| Ionicons              | MIT                        | [ion-icons](https://github.com/ionic-team/ionicons)                 |
| Radix Icons           | MIT                        | [radix-icons](https://github.com/radix-ui/icons)                    |
| Simple Line Icons     | MIT                        | [simple-line-icons](https://github.com/thesabbir/simple-line-icons) |
| Tabler Icons          | MIT                        | [tabler-icons](https://github.com/tabler/tabler-icons)              |
| Themify Icons         | MIT                        | [themify-icons](https://github.com/lykmapipo/themify-icons)         |
| Typicons              | CC BY-SA 3.0               | [typ-icons](https://github.com/stephenhutchings/typicons.font)      |
| VS Code Icons         | CC BY 4.0                  | [vc-code-icons](https://github.com/microsoft/vscode-codicons)       |
| Weather Icons         | SIL OFL 1.1                | [weather-icons](https://github.com/erikflowers/weather-icons)       |

## Performance

- Icons are automatically cached by `flutter_svg`
- Network requests are optimized
- Supports both HTTP and HTTPS URLs
- Placeholder widgets prevent layout shifts during loading

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
