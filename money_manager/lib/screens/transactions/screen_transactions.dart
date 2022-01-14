// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ScreenTransactions extends StatelessWidget {
  const ScreenTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (ctx, index) {
          return const Card(
            margin: EdgeInsets.all(8.0),
            elevation: 0,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.purple,
                  radius: 50.0,
                  child: Text(
                    '24\n Dec',
                    textAlign: TextAlign.center,
                  )),
              title: Text('RS.1000'),
              subtitle: Text('Travel'),
            ),
          );
        },
        separatorBuilder: (ctx, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: 10);
  }
}
