/*
 * Copyright (c) 2021. AppDynamics LLC and its affiliates.
 * All rights reserved.
 *
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizedButton extends StatelessWidget {
  final BuildContext context;
  final String title;
  final String keyString;
  final Widget screen;

  void onPressed() => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => screen),
      );

  SizedButton(
      {required this.context,
      required this.title,
      required this.keyString,
      required this.screen});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 10),
        ElevatedButton(
            key: Key(keyString), child: Text(title), onPressed: onPressed)
      ],
    );
  }
}