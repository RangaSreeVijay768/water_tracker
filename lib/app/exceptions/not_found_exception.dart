import 'package:beebloom_water_tracker/app/exceptions/base_exception.dart';

class NotFoundException extends BaseException {
  const NotFoundException({super.message, super.source});
}
