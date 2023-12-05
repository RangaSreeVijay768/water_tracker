import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';

class ModalData<T> {
  BooleanStatus status;
  T? data;
  dynamic errorData;

  ModalData({
    required this.status,
    this.data,
    this.errorData,
  });
}
