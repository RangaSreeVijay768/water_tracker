import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class DioClient {
  final dio = Dio();
}


