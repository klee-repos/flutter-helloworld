import 'package:flutter/material.dart';

class Styles {

  static const _textSizeLarge = 25.0;
  static const _textSizeDefault = 16.0;
  static final Color _textColorStrong = _hexToColor('0000000');
  static final Color _textColorDefault = _hexToColor('6666666');
  static final String _fontNameHeader = "Comfortaa Regular";
  static final String _fontNameDefault = "Open Sans Regular";

  static final navBarTitle = TextStyle(
    fontFamily: _fontNameHeader
  );
  static final headerLarge = TextStyle(
    fontFamily: _fontNameHeader,
    fontSize: _textSizeLarge,
    color: _textColorStrong
  );
  static final textDefault = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeDefault,
    color: _textColorDefault,
  );

  static Color _hexToColor(String code) {
    return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
  }
}

