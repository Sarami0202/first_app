import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

// ステートフルウィジェット：状態を持つウィジェット
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// MyHomePageの状態を管理するクラス
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    String? apiKey = dotenv.env['API_BASE_URL'];
    print('API_BASE_URL: $apiKey');
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
          ],
        ),
      ),
      // 右下に配置されたボタン：押すとカウンターがインクリメント
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NextPage()),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Next Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('aaa戻る'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
