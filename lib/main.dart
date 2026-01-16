import 'package:flutter/material.dart';
import 'package:first_app/src/home.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env"); // ← ここで読み込み
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
