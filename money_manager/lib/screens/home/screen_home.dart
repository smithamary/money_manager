import 'package:flutter/material.dart';
import 'package:money_manager/screens/home/widgets/bottomnavigation.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MoneyManagerBottomNavigation(),
      body: SafeArea(child: Text("Home")),
    );
  }
}
