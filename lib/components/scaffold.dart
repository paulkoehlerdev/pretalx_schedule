import 'package:flutter/material.dart';
import 'package:pretalx_schedule/components/drawer.dart';

class CustomScaffold extends StatefulWidget {
  final List<NavigationBarPage> pages;

  const CustomScaffold({super.key, required this.pages});

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.widget.pages[_selectedIndex].label),
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
          );
        }),
      ),
      drawer: const CustomDrawer(),
      body: this.widget.pages[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        destinations:
            this.widget.pages.map((p) => p.destination(context)).toList(),
      ),
    );
  }
}

class NavigationBarPage extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconData? selectedIcon;

  final Widget content;

  const NavigationBarPage(
      {required this.label,
      required this.icon,
      this.selectedIcon,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return content;
  }

  NavigationDestination destination(BuildContext context) =>
      NavigationDestination(
        icon: Icon(icon),
        selectedIcon: Icon(selectedIcon ?? icon),
        label: label,
      );
}
