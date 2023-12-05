import 'package:beebloom_water_tracker/app/core/logger/log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseController<T extends BlocBase> {
  T? cubit;
  BuildContext? childContext;

  BaseController();

  T getChildCubit() {
    if (childContext == null) {
      throw AssertionError('child context cannot be null');
    }
    logger.d(childContext?.widget.toString());
    return BlocProvider.of<T>(childContext!);
  }

  String getControllerId() {
    return runtimeType.toString();
  }
}
