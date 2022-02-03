import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vikings/actions/back_action.dart';
import 'package:flutter_vikings/actions/clear_action.dart';
import 'package:flutter_vikings/actions/copy_action.dart';
import 'package:flutter_vikings/actions/next_action.dart';
import 'package:flutter_vikings/slides/silde_one.dart';
import 'package:flutter_vikings/slides/slide_eight.dart';
import 'package:flutter_vikings/slides/slide_five.dart';
import 'package:flutter_vikings/slides/slide_four.dart';
import 'package:flutter_vikings/slides/slide_nine.dart';
import 'package:flutter_vikings/slides/slide_seven.dart';
import 'package:flutter_vikings/slides/slide_six.dart';
import 'package:flutter_vikings/slides/slide_three.dart';
import 'package:flutter_vikings/slides/slide_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blueGrey, colorScheme: const ColorScheme.dark()),
      home: Shortcuts(
        shortcuts: <LogicalKeySet, Intent>{
          LogicalKeySet(LogicalKeyboardKey.arrowRight): const NextIntent(),
          LogicalKeySet(LogicalKeyboardKey.arrowLeft): const BackIntent(),
          LogicalKeySet(LogicalKeyboardKey.escape): const ClearIntent(),
          LogicalKeySet(LogicalKeyboardKey.control, LogicalKeyboardKey.keyE): const CopyIntent(),
        },
        child: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Actions(
      actions: <Type, Action<Intent>>{
        NextIntent: NextAction(pageController),
        BackIntent: BackAction(pageController),
      },
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: PageView(
                controller: pageController,
                children: const [
                  SlideOne(),
                  SlideTwo(),
                  SlideThree(),
                  SlideFour(),
                  SlideFIve(),
                  SlideSix(),
                  SlideSeven(),
                  SlideEight(),
                  SlideNine(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
