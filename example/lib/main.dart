import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

void main() {
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Remix Icons v4.6.0'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(RemixIcons.service_bell_fill),
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          _buildNewIconsPage(),
          _buildCategoriesPage(),
          _buildSettingsPage(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: [
          NavigationDestination(
            icon: Icon(RemixIcons.diamond_fill),
            label: 'New Icons',
          ),
          NavigationDestination(
            icon: Icon(RemixIcons.arrow_left_right_line),
            label: 'Categories',
          ),
          NavigationDestination(
            icon: Icon(RemixIcons.settings_3_line),
            label: 'Settings',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(RemixIcons.multi_image_fill),
      ),
    );
  }

  Widget _buildNewIconsPage() {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text(
                      'New in v1.4.0',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Featuring new icons released in December 2024',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Wrap(
              spacing: 24,
              runSpacing: 24,
              children: [
                _buildIconCard(RemixIcons.account_box_2_line, 'Account'),
                _buildIconCard(Remix.money_cny_box_line, 'Money'),
                _buildIconCard(RemixIcons.diamond_fill, 'Diamond'),
                _buildIconCard(Remix.diamond_ring_fill, 'Ring'),
                _buildIconCard(Remix.jewelry_fill, 'Jewelry'),
                _buildIconCard(RemixIcons.accessibility_fill, 'Accessibility'),
                _buildIconCard(RemixIcons.alarm_add_fill, 'Alarm Add'),
                _buildIconCard(RemixIcons.arrow_down_long_line, 'Down Long'),
                _buildIconCard(RemixIcons.arrow_left_long_line, 'Left Long'),
                _buildIconCard(RemixIcons.chess_fill, 'Chess'),
                _buildIconCard(RemixIcons.figma_fill, 'Figma'),
                _buildIconCard(
                    RemixIcons.no_credit_card_line, 'No Credit Card'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoriesPage() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(RemixIcons.folder_fill, size: 64),
          const SizedBox(height: 16),
          const Text('Categories Page'),
        ],
      ),
    );
  }

  Widget _buildSettingsPage() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(RemixIcons.settings_fill, size: 64),
          const SizedBox(height: 16),
          const Text('Settings Page'),
        ],
      ),
    );
  }

  Widget _buildIconCard(IconData icon, String label) {
    return Column(
      children: [
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              icon,
              size: 48,
              color: Colors.blue,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}
