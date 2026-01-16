import 'package:flutter/material.dart';

void main() {
  // アプリのエントリーポイント
  runApp(const MyApp());
}

// ルートウィジェット
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // テーマ設定：深紫色をベースカラーに使用
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // ホーム画面を設定
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// ステートフルウィジェット：状態を持つウィジェット
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// MyHomePageの状態を管理するクラス
class _MyHomePageState extends State<MyHomePage> {
  // ボタンが押された回数を保持する変数
  int _counter = 0;

  // カウンター値をインクリメントするメソッド
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ヘッダー部分
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // メインコンテンツ：中央揃えで縦方向にテキストとカウンター数字を配置
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            const Text('Hello, Flutteeeeeeeeeer!'),
            // カウンター数字を大きなフォントサイズで表示
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      // 右下に配置されたボタン：押すとカウンターがインクリメント
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
