import 'package:flutter/material.dart';
import 'package:onboard_animation/components/Screen/home_pages.dart';

class MainBottomNavScreen extends StatefulWidget {
  @override
  _MainBottomNavScreenState createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePages(),
    // Add your other pages here like SearchPage(), TimePage(), etc.
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 10), // Adjust padding
          child: Container(
            height: 65, // Reduce height of BottomNavigationBar to avoid overflow
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 22, 108, 207),
                  Color.fromARGB(255, 22, 108, 207),
                ],
                begin: Alignment.topRight,
                end: Alignment.center,
              ),
              borderRadius: BorderRadius.circular(12), // Border radius for styling
              border: Border.all(
                color: Colors.white, // Border color
                width: 2, // Border width
              ),
            ),
            child: Theme(
              data: Theme.of(context).copyWith(
                splashColor: Colors.transparent, // Disable splash effect
                highlightColor: Colors.transparent, // Disable highlight effect
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.transparent, // Transparent background
                elevation: 0, // Remove shadow
                selectedItemColor: Colors.white, // Selected icon color
                unselectedItemColor: Color.fromARGB(255, 20, 2, 2), // Unselected icon color
                showSelectedLabels: true, // Show selected labels
                showUnselectedLabels: false, // Hide unselected labels
                currentIndex: _selectedIndex, // Selected index
                onTap: _onItemTapped, // Handle taps
                items: [
                  BottomNavigationBarItem(
                    icon: _buildAnimatedIcon(Icons.home_filled, 0),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: _buildAnimatedIcon(Icons.search, 1),
                    label: 'Search',
                  ),
                  BottomNavigationBarItem(
                    icon: _buildAnimatedIcon(Icons.access_time, 2),
                    label: 'Time',
                  ),
                  BottomNavigationBarItem(
                    icon: _buildAnimatedIcon(Icons.notifications_none, 3),
                    label: 'Notifications',
                  ),
                  BottomNavigationBarItem(
                    icon: _buildAnimatedIcon(Icons.person_outline, 4),
                    label: 'Profile',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Animated icon builder for smooth transition
  Widget _buildAnimatedIcon(IconData iconData, int index) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return _selectedIndex == index
            ? ScaleTransition(scale: animation, child: child)
            : child;
      },
      child: Icon(
        iconData,
        key: ValueKey<int>(_selectedIndex == index ? 1 : 0),
        color: _selectedIndex == index ? Colors.white : Color.fromARGB(255, 67, 66, 71),
      ),
    );
  }
}
