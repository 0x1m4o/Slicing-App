import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import './hex_color.dart';

ThemeData lightTheme = ThemeData(
    fontFamily: 'NunitoSans',
    primaryColor: colorFromHex('2680eb'),
    textTheme:
        TextTheme(headlineSmall: TextStyle(fontWeight: FontWeight.w100)));

ThemeData darkTheme =
    ThemeData.dark().copyWith(primaryColor: colorFromHex('2680eb'));
