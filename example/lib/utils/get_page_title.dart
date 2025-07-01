String getPageTitle(String route) {
  switch (route) {
    case '/':
      return 'Home';
    case '/ant-design-filled':
      return 'Ant Design Filled';
    case '/ant-design-outlined':
      return 'Ant Design Outlined';
    case '/ant-design-twotone':
      return 'Ant Design Two Tone';
    case '/bootstrap-icons':
      return 'Bootstrap Icons';
    case '/box-icon-logos':
      return 'Box Icon Logos';
    case '/box-icon-regular':
      return 'Box Icon Regular';
    case '/box-icon-solid':
      return 'Box Icon Solid';
    case '/feather-icons':
      return 'Feather Icons';
    case '/flat-color-icons':
      return 'Flat Color Icons';
    default:
      return 'Home';
  }
}
