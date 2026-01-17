import 'package:flutter/material.dart';

// ステートフルウィジェット：状態を持つウィジェット
class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

// TodoListの状態を管理するクラス
class _TodoListState extends State<TodoList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ヘッダー部分
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('TODOリスト'),
      ),
      // メインコンテンツ：中央揃えで縦方向にテキストとカウンター数字を配置
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text('Todo List Page')],
        ),
      ),
    );
  }
}
