import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'home_widget_save_data_controller.dart';
import 'home_widget_save_data_cubit.dart';

class HomeWidgetSaveData extends BaseStatelessWidget<
    HomeWidgetSaveDataController, HomeWidgetSaveDataCubit> {
  HomeWidgetSaveData({Key? key, super.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeWidgetSaveDataCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<HomeWidgetSaveDataCubit, HomeWidgetSaveDataState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return ElevatedButton(
              onPressed: () {
                getCubit(context)
                    .saveWidgetData(DateTime.now().millisecondsSinceEpoch);
              },
              child: Text('increase amount'));
          ;
        },
      ),
    );
  }

  @override
  HomeWidgetSaveDataCubit createCubitAndAssignToController(
      BuildContext context) {
    HomeWidgetSaveDataCubit cubit = HomeWidgetSaveDataCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}
