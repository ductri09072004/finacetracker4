import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Trang Lịch Sử',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
