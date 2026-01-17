import 'package:first_app/src/root_page.dart';
import 'package:flutter/material.dart';
import 'package:first_app/provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:first_app/src/user/register.dart';

//起動時の状態管理
class StatePage extends StatelessWidget {
  const StatePage({super.key});
  @override
  Widget build(BuildContext context) {
    final isLoggedIn = context.watch<UserProvider>().isLoggedIn;
    print('isLoggedIn: $isLoggedIn');
    return isLoggedIn ? const BottomMenuPage() : const UserRegister();
  }
}
