import 'package:flutter/material.dart';
import 'package:testverygood/components/Header_main.dart';
import 'package:testverygood/features/statistical/view/body.dart';

class StatisticalPage extends StatelessWidget {
  const StatisticalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          HeaderMain(
            title: 'Statistical',
          ),
          BodyMain(),
        ],
      ),
    );
  }
}
