part of dashboard;

class _BottomNavbar extends StatefulWidget {
  const _BottomNavbar({Key? key}) : super(key: key);

  @override
  State<_BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<_BottomNavbar>
    with TickerProviderStateMixin {
  String _lastSelected = 'TAB: 0';

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = 'TAB: $index';
    });
  }

  void _selectedFab(int index) {
    setState(() {
      _lastSelected = 'FAB: $index';
    });
  }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return FABBottomAppBar(
      centerItemText: 'Submit a feedback',
      color: Colors.grey,
      selectedColor: Theme.of(context).primaryColor,
      notchedShape: CircularNotchedRectangle(),
      onTabSelected: _selectedTab,
      items: [
        FABBottomAppBarItem(iconData: Icons.home, text: 'Home'),
        FABBottomAppBarItem(iconData: Icons.bar_chart, text: 'Learning'),
      ],
      backgroundColor: Colors.white,
    );
  }
}
