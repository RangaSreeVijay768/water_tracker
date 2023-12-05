import 'dart:convert';

import 'package:beebloom_water_tracker/app/core/logger/log.dart';
import 'package:beebloom_water_tracker/app/environment/environment.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@singleton
class EnvConfig {
  AppEnvironment appEnvironment;

  EnvConfig(this.appEnvironment);

  @FactoryMethod(preResolve: true)
  static Future<EnvConfig> forEnvironment() async {
    await dotenv.load(fileName: ".env");

    String env = dotenv.get("environment", fallback: "dev");
    // env=env??"dev";
    final contents = await rootBundle.loadString(
      'config/$env.json',
    );

    final json = jsonDecode(contents);

    return EnvConfig(AppEnvironment.fromJson(json));
  }

  static AppEnvironment getAppEnvironment(){
    return GetIt.instance<EnvConfig>().appEnvironment;
  }
}
