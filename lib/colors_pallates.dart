import 'package:flutter/material.dart';

class ColorsPalette {
  final String name;
  final String key;
  final ThemeData theme;
  final List<Color> mainColors;

  ColorsPalette({
    required this.key,
    required this.name,
    required this.theme,
    required this.mainColors,
  });
}

final pallates = [
  ColorsPalette(
    name: 'King Bee',
    key: 'KING_BEE',
    mainColors: const [
      Color(0xffffd677),
      Color(0xff1b0706),
      Color(0xffffc913),
      Color(0xffaac7ff),
      Color(0xffe2e2e2),
    ],
    theme: ThemeData(
      backgroundColor: const Color(0xffaac7ff),
      scaffoldBackgroundColor: const Color(0xffe2e2e2),
      shadowColor: const Color(0xffffc913),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xffffd677),
        foregroundColor: Color(0xff1b0706),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xffffd677),
        foregroundColor: Color(0xff1b0706),
      ),
      brightness: Brightness.light,
    ),
  ),
  ColorsPalette(
    name: 'MIWC',
    key: 'MIWC',
    mainColors: const [
      Color(0xff3598c1),
      Color(0xfff9b24f),
      Color(0xffff8357),
      Color(0xff878787),
      Color(0xff87c97f),
    ],
    theme: ThemeData(
      backgroundColor: const Color(0xff878787),
      scaffoldBackgroundColor: const Color(0xff878787),
      shadowColor: const Color(0xffff8357),
      appBarTheme: const AppBarTheme(
        foregroundColor: Color(0xfff9b24f),
        backgroundColor: Color(0xff3598c1),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Color(0xfff9b24f),
        backgroundColor: Color(0xff3598c1),
      ),
      brightness: Brightness.light,
    ),
  ),
  ColorsPalette(
    name: 'Feathered Kisses',
    key: 'FEATHERED_KISSES',
    mainColors: const [
      Color(0xff595758),
      Color(0xffe8d5c7),
      Color(0xffdfc3ba),
      Color(0xffd5b0ad),
      Color(0xfff3e8e8)
    ],
    theme: ThemeData(
      backgroundColor: const Color(0xff595758),
      scaffoldBackgroundColor: const Color(0xfff3e8e8),
      shadowColor: const Color(0xffdfc3ba),
      appBarTheme: const AppBarTheme(
        foregroundColor: Color(0xffe8d5c7),
        backgroundColor: Color(0xff595758),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Color(0xffd5b0ad),
        backgroundColor: Color(0xff595758),
      ),
      brightness: Brightness.light,
    ),
  ),
  ColorsPalette(
    key: 'KAEDE_AKAMATSU',
    name: 'Kaede Akamatsu',
    mainColors: const [
      Color(0xfff6edec),
      Color(0xffebdcba),
      Color(0xff9e7694),
      Color(0xffb8a2ac),
      Color(0xff4b2a41),
    ],
    theme: ThemeData(
      backgroundColor: const Color(0xfff6edec),
      scaffoldBackgroundColor: const Color(0xfff6edec),
      appBarTheme: const AppBarTheme(
        foregroundColor: Color(0xff4b2a41),
        backgroundColor: Color(0xff9e7694),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Color(0xff4b2a41),
        backgroundColor: Color(0xff9e7694),
      ),
      brightness: Brightness.light,
      shadowColor: const Color(0xff4b2a41),
    ),
  ),
  ColorsPalette(
    key: 'ICECREAM_CUTE',
    name: 'Ice cream cute',
    mainColors: const [
      Color(0xff767676),
      Color(0xffcacaca),
      Color(0xffffffff),
      Color(0xffffefef),
      Color(0xffffdada),
    ],
    theme: ThemeData(
      backgroundColor: const Color(0xff767676),
      scaffoldBackgroundColor: const Color(0xffffdada),
      shadowColor: const Color(0xffffdada),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff767676),
        foregroundColor: Color(0xffffefef),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xff767676),
        foregroundColor: Color(0xffffefef),
      ),
    ),
  ),
  ColorsPalette(
    key: 'BLOG',
    name: 'Blog',
    mainColors: const [
      Color(0xfffad9af),
      Color(0xff66a2cd),
      Color(0xffccd1dc),
      Color(0xffffffff),
      Color(0xff999999),
    ],
    theme: ThemeData(
      backgroundColor: const Color(0xffccd1dc),
      scaffoldBackgroundColor: const Color(0xff999999),
      shadowColor: const Color(0xffccd1dc),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xffccd1dc),
        foregroundColor: Color(0xff66a2cd),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xffccd1dc),
        foregroundColor: Color(0xff66a2cd),
      ),
    ),
  ),
  ColorsPalette(
    key: 'SMART_SYSTEM',
    name: 'Smart system',
    mainColors: const [
      Color(0xffebecf3),
      Color(0xffd2d7dc),
      Color(0xff61696d),
      Color(0xff32c4e0),
      Color(0xff81eaea),
    ],
    theme: ThemeData(
      backgroundColor: const Color(0xffebecf3),
      scaffoldBackgroundColor: const Color(0xffd2d7dc),
      shadowColor: const Color(0xff61696d),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff32c4e0),
        foregroundColor: Color(0xff61696d),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xff32c4e0),
        foregroundColor: Color(0xff61696d),
      ),
    ),
  )
];
