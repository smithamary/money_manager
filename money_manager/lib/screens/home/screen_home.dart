import 'package:flutter/material.dart';
import 'package:money_manager/screens/category/screen_category.dart';
import 'package:money_manager/screens/home/widgets/bottomnavigation.dart';
import 'package:money_manager/screens/transactions/screen_transactions.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);
  static ValueNotifier<int> selectedNotifier = ValueNotifier(0);
  final _pages = const [
    ScreenTransactions(),
    ScreenCategory(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[100],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('MONEY MANAGER'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          onPressed: () {
            if (selectedNotifier.value == 0)
              print('Add Transactions');
            else
              print('Add Category');
          },
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: const MoneyManagerBottomNavigation(),
        body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: selectedNotifier,
              builder: (BuildContext ctx, int updatedIndex, Widget? _) {
                return _pages[updatedIndex];
              }),
        ));
  }
}
