import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'trackers_change_drink_type_modal_content_state.dart';

class TrackersChangeDrinkTypeModalContentCubit extends Cubit<TrackersChangeDrinkTypeModalContentState> {
  TrackersChangeDrinkTypeModalContentCubit() : super(TrackersChangeDrinkTypeModalContentInitial());
}
