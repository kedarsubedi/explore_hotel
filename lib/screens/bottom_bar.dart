import 'package:explore_hotels/screens/dashboard.dart';
import 'package:explore_hotels/screens/invite&exam.dart';
import 'package:explore_hotels/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:explore_hotels/screens/booking.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget>_widgetOptions = <Widget> [
    const DashboardScreen(),
    const InviteExamScreen(),
    const BookingScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.add_home_work), label: 'Invite & Exam'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Booking'),
          BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined), label: 'Profile'),
        ],
      ),
    );
  }
}
