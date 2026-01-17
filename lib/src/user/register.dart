import 'package:flutter/material.dart';

// ステートフルウィジェット：状態を持つウィジェット
class UserRegister extends StatefulWidget {
  const UserRegister({super.key});

  @override
  State<UserRegister> createState() => _UserRegisterState();
}

// UserRegisterの状態を管理するクラス
class _UserRegisterState extends State<UserRegister> {
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
        title: const Text('ユーザー登録'),
      ),
      // メインコンテンツ：中央揃えで縦方向にテキストとカウンター数字を配置
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'メールアドレス',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  labelText: '名前',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'パスワード',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            const Spacer(),
            ElevatedButton(onPressed: () {}, child: const Text('登録')),
            const SizedBox(height: 96),
          ],
        ),
      ),
    );
  }
}
