import 'package:flutter/cupertino.dart';


abstract class shadows {
  static const bs_primary = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.2),
    offset: Offset(
      5.0,
      5.0,
    ),
    blurRadius: 10.0,
    spreadRadius: 2.0,
  );
  static const bs_grey = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.08),
    offset: Offset(
      0.0,
      0.0,
    ),
    blurRadius: 16.0,
    spreadRadius: 0.0,
  );



}
