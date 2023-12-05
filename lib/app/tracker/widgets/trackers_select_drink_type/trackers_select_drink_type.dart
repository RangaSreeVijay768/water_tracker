import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/trackers_select_drink_type/trackers_select_drink_type_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/trackers_select_drink_type/trackers_select_drink_type_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrackersSelectDrinkType extends BaseStatelessWidget<
    TrackersSelectDrinkTypeController, TrackersSelectDrinkTypeCubit> {
  const TrackersSelectDrinkType({Key? key, super.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackersSelectDrinkTypeCubit>(
        create: (context) => createCubitAndAssignToController(context),
        child: BlocBuilder<TrackersSelectDrinkTypeCubit,
            TrackersSelectDrinkTypeState>(builder: (context, state) {
          var values = [50, 100, 150, 200, 250];
          return Container(
            padding: edge_insets_x_16,
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.drinkTypes.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            padding: edge_insets_3,
                            child: Column(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    getCubit(context).selectDrinkType(
                                        state.drinkTypes[index]);
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: AppColors.white,
                                    fixedSize: const Size(60, 60),
                                    shape: CircleBorder(
                                      side: BorderSide(
                                        color:
                                            state.selectedDrinkType != null &&
                                                    state.selectedDrinkType
                                                            ?.drinkType ==
                                                        state.drinkTypes[index]
                                                            .drinkType
                                                ? AppColors.bgPrimary
                                                : AppColors.grey2,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                  ),
                                  child: Image.asset(
                                      state.drinkTypes[index].image),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  state.drinkTypes[index].humanReadable,
                                  style: TextStyle(
                                    fontWeight: Fonts.f500,
                                    color: state.selectedDrinkType != null &&
                                            state.selectedDrinkType
                                                    ?.drinkType ==
                                                state
                                                    .drinkTypes[index].drinkType
                                        ? AppColors.bgPrimary
                                        : AppColors.grey4,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
                state.selectedDrinkType != null
                    ? SizedBox(
                        height: 100,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: state.drinkTypes.length,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        padding: edge_insets_3,
                                        child: TextButton(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(
                                              backgroundColor: AppColors.white,
                                              fixedSize: const Size(60, 60),
                                              shape: CircleBorder(
                                                side: BorderSide(
                                                  color: AppColors.grey2,
                                                ),
                                              ),
                                            ),
                                            child: Opacity(
                                              opacity: 0.2,
                                              child: Image.asset(state
                                                  .selectedDrinkType!.image),
                                            )),
                                      ),
                                      Text(
                                        values[index].toString(),
                                        style: TextStyle(
                                            fontSize: Fonts.fontSize12,
                                            color: AppColors.grey4),
                                      ),
                                    ],
                                  )
                                ],
                              );
                            }),
                      )
                    : SizedBox(height: 100,)
              ],
            ),
          );
        }));
  }

  @override
  TrackersSelectDrinkTypeCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackersSelectDrinkTypeCubit cubit = TrackersSelectDrinkTypeCubit();
    controller?.cubit = cubit;
    print('assigning in select drink type');
    return cubit;
  }
}
