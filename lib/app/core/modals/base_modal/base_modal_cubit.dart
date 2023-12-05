import 'package:beebloom_water_tracker/app/core/blocs/base_cubit.dart';
import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_modal_cubit.freezed.dart';
part 'base_modal_state.dart';

abstract class BaseModalCubit<T> extends BaseCubit<T> {
  BaseModalCubit({required super.initialState, required super.context});

  void openModal();

  void closeModal();
}
