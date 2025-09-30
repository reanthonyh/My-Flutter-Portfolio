import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Home Content', style: Theme.of(context).textTheme.displayLarge);
  }
}