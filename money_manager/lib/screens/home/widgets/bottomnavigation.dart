import 'package:flutter/material.dart';

class MoneyManagerBottomNavigation extends StatelessWidget {
  const MoneyManagerBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Transactions'),
      BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Category')
    ]);
  }
}
