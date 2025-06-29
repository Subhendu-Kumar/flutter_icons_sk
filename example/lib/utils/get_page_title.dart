String getPageTitle(String route) {
  switch (route) {
    case '/':
      return 'Home';
    case '/users':
      return 'Users';
    default:
      return 'Home';
  }
}
