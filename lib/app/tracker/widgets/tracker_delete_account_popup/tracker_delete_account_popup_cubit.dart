import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracker_delete_account_popup_state.dart';
part 'tracker_delete_account_popup_cubit.freezed.dart';

class TrackerDeleteAccountPopupCubit extends Cubit<TrackerDeleteAccountPopupState> {
  TrackerDeleteAccountPopupCubit() : super(const TrackerDeleteAccountPopupState.initial());
}
