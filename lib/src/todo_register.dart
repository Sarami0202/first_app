import 'package:flutter/material.dart';

// ステートフルウィジェット：状態を持つウィジェット
class TodoRegister extends StatefulWidget {
  const TodoRegister({super.key});

  @override
  State<TodoRegister> createState() => _TodoRegisterState();
}

// TodoRegisterの状態を管理するクラス
class _TodoRegisterState extends State<TodoRegister> {
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
        title: Text('TODO作成'),
      ),
      // メインコンテンツ：中央揃えで縦方向にテキストとカウンター数字を配置
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text('Todo作成ページ')],
        ),
      ),
    );
  }
}
