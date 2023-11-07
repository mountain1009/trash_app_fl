import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'settings.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const path = '/';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '10/31 第1 火曜日',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () => GoRouter.of(context).push(Settings.path),
            icon: const Icon(Icons.settings),
            color: Colors.black,
          ),
        ],
      ),
      body: SafeArea(
          child: Column(children: [
        Row(
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Container(
                color: Colors.red,
                child: const Text("燃えるごみ"),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: Container(
                color: Colors.green,
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Text("hogehoge"),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Container(
                color: Colors.red,
                height: 100,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: Container(
                color: Colors.green,
                height: 100,
              ),
            ),
          ],
        )
      ])),
    );
  }
}
