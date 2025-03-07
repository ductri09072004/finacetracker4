import 'package:flutter/material.dart';
import 'package:testverygood/components/component_app/HeaderA.dart';
import 'package:testverygood/components/component_app/input.dart';
import 'package:testverygood/components/component_app/button.dart';

class LinkEmail extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  void verifyEmail(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderA(
        title: '',
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity, // Chiếm toàn bộ chiều cao màn hình
        child: Container(
          color: const Color(0xFFFFFFFF), // Màu nền của body
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                    child: Text(
                      'Verify Email',
                      style: TextStyle(fontSize: 30, fontFamily: 'Lato'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Link Email',
                    style: TextStyle(fontSize: 18, fontFamily: 'Lato'),
                  ),
                  const SizedBox(height: 8),
                  InputVerify(
                    hintText: 'ex: dtc@gmail.com',
                    controller: emailController,
                    suffixText: 'Gửi',
                    onSuffixPressed: () {},
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'OTP',
                    style: TextStyle(fontSize: 18, fontFamily: 'Lato'),
                  ),
                  const SizedBox(height: 8),
                  InputVerify(
                    hintText: 'OTP',
                    controller: otpController,
                  ),
                  const SizedBox(height: 26),
                  Button(
                    label: 'Purchase',
                    onPressed: () {
                      verifyEmail(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
