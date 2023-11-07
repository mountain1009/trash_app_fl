import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);
  static const path = '/page2';
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '設定',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          leading: const BackButton(color: Colors.black),
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: TextButton(
            onPressed: () => GoRouter.of(context).pop(),
            child: const Text('back'),
          ),
        ));
  }
}
