import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ads_test_modal_widget_state.dart';
part 'ads_test_modal_widget_cubit.freezed.dart';

class AdsTestModalWidgetCubit extends Cubit<AdsTestModalWidgetState> {
  AdsTestModalWidgetCubit() : super(const AdsTestModalWidgetState.initial());
  
  openModal(){
    emit(state.copyWith(modalStatus: BooleanStatus.active));
  }

  closeModal(){
    emit(state.copyWith(modalStatus: BooleanStatus.closed));
  }
}
