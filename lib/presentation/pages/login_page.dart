import 'package:flutter/material.dart';
import 'package:shoppingmall_layout/presentation/widget/bottom_appbar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_left, color: Colors.black),
        ),
        title: const Text('로그인/회원가입', style: TextStyle(fontSize: 25)),
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      ),
      bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}
