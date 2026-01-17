import 'package:flutter/material.dart';
import 'package:first_app/src/home.dart';
import 'package:first_app/src/todo_list.dart';
import 'package:first_app/src/todo_register.dart';

// ルートページ：ボトムナビゲーションバーで画面を切り替える
class BottomMenuPage extends StatefulWidget {
  const BottomMenuPage({super.key});

  @override
  State<BottomMenuPage> createState() => _BottomMenuPageState();
}

class _BottomMenuPageState extends State<BottomMenuPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    MyHomePage(title: 'Flutter Demo Home Page'),
    TodoList(),
    TodoRegister(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: '一覧'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: '作成'),
        ],
      ),
    );
  }
}
