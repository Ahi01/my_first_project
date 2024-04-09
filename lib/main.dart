import 'package:flutter/material.dart';
import 'package:my_first_project/router/router.dart';
import 'package:my_first_project/ui/theme/theme.dart';

void main() {
  runApp(const Rhymer());
}

class Rhymer extends StatefulWidget {
  const Rhymer({super.key});

  @override
  State<Rhymer> createState() => _RhymerState();
}

class _RhymerState extends State<Rhymer> {
  final _router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Rhymer',
      theme: themeData,
      routerConfig: _router.config(),
    );
  }
}
