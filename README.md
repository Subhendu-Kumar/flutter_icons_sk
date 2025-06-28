A Flutter package for rendering remote SVG icons dynamically with support for multiple icon families. Built on top of `flutter_svg` for optimal performance and caching.

## Features

- 🚀 Dynamic icon loading from multiple families (Font Awesome, Heroicons, Feather, etc.)
- 🎨 Customizable colors, sizes, and other properties
- 🔧 Smart icon name mapping for different families
- ⚡ Automatic caching via `flutter_svg`
- 🎯 Accessibility support
- 📦 Lightweight and performant

## Usage

### Dynamic Icons by Family

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

| Icon Set         | License           | Project Link                                                       |
| ---------------- | ----------------- | ------------------------------------------------------------------ |
| Ant Design Icons | MIT               | [ant-design-icons](https://github.com/ant-design/ant-design-icons) |
| Bootstrap Icons  | MIT               | [twbs/icons](https://github.com/twbs/icons)                        |
| BoxIcons         | MIT               | [boxicons](https://github.com/atisawd/boxicons)                    |
| css.gg           | MIT               | [css.gg](https://github.com/astrit/css.gg)                         |
| Feather          | MIT               | [feathericons.com](https://feathericons.com/)                      |
| Flat Color Icons | MIT               | [flat-color-icons](https://github.com/icons8/flat-color-icons)     |
| Font Awesome 6   | CC BY 4.0 License | [fontawesome.com](https://fontawesome.com/)                        |

## Note

`All the available icons list will be updated very soon`

## Performance

- Icons are automatically cached by `flutter_svg`
- Network requests are optimized
- Supports both HTTP and HTTPS URLs
- Placeholder widgets prevent layout shifts during loading

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
