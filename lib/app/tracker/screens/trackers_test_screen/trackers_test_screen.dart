import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'trackers_test_screen_controller.dart';
import 'trackers_test_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackersTestScreen
    extends BaseStatelessWidget<
        TrackersTestScreenController,
        TrackersTestScreenCubit> {

  const TrackersTestScreen({Key? key, super.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackersTestScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackersTestScreenCubit, TrackersTestScreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Container();
        },
      ),
    );
  }

  @override
  TrackersTestScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackersTestScreenCubit cubit = TrackersTestScreenCubit();
    controller?.cubit = cubit;
    return cubit;
  }

}
