import 'package:beebloom_water_tracker/app/core/controllers/base_controller.dart';
import 'package:beebloom_water_tracker/app/tracker/widgets/tracker_edit_goal_modal/tracker_edit_goal_modal_content/tracker_edit_goal_modal_content_cubit.dart';

class TrackerEditGoalModalContentController extends BaseController<TrackerEditGoalModalContentCubit>{

}

// @override
// Widget build(BuildContext context) {
//   return BlocProvider(
//     create: (context) => createCubitAndAssignToController(context),
//     child: BlocConsumer<TrackerEditGoalModalContentCubit,
//         TrackerEditGoalModalContentState>(
//       listener: (context, state) {},
//       builder: (context, state) {
//         return SingleChildScrollView(
//           child: Container(
//             decoration: const BoxDecoration(
//               color: AppColors.white,
//               borderRadius: radius.br_t_20,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Container(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     // mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                       Container(
//                         padding: edge_insets_16,
//                         decoration:
//                         BoxDecoration(border: borders.bb_1px_grey1),
//                         child: Row(
//                           mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Text(
//                               'Edit goal',
//                               style: TextStyle(
//                                 color: AppColors.textHeading,
//                                 fontSize: Fonts.fontSize24,
//                                 fontFamily: Fonts.fontNunito,
//                                 fontWeight: Fonts.f700,
//                               ),
//                             ),
//                             IconButton(
//                                 onPressed: () => Navigator.pop(context),
//                                 style: IconButton.styleFrom(
//                                     padding: edge_insets_0),
//                                 icon: const Icon(Icons.clear))
//                           ],
//                         ),
//                       ),
//                       Container(
//                         margin: edge_insets_t_40,
//                         padding: edge_insets_x_16,
//                         height: 48,
//                         color: AppColors.bgLightGrey,
//                         child: Row(
//                           children: [
//                             Container(
//                               margin: edge_insets_y_13,
//                               padding: edge_insets_r_8,
//                               child: const Icon(
//                                 Icons.hourglass_empty,
//                                 color: AppColors.bgPrimary,
//                               ),
//                             ),
//                             Text.rich(TextSpan(
//                                 text: 'we suggest goal of ',
//                                 style: TextStyle(
//                                     color: AppColors.grey1,
//                                     fontSize: Fonts.fontSize14,
//                                     fontWeight: Fonts.f400,
//                                     fontFamily: Fonts.fontNunito),
//                                 children: <InlineSpan>[
//                                   TextSpan(
//                                     text: ((state.recommendedGoal) / 1000)
//                                         .toStringAsFixed(1) +
//                                         ' litres',
//                                     style: TextStyle(
//                                       fontWeight: Fonts.f700,
//                                       color: AppColors.textHeading,
//                                     ),
//                                   ),
//                                   TextSpan(
//                                     text: ' for you',
//                                     style: TextStyle(
//                                       color: AppColors.grey1,
//                                       fontSize: Fonts.fontSize14,
//                                       fontWeight: Fonts.f400,
//                                     ),
//                                   )
//                                 ]))
//                           ],
//                         ),
//                       ),
//                       Container(
//                         margin: edge_insets_t_48,
//                         alignment: Alignment.center,
//                         child: Container(
//                           padding: edge_insets_x_40_y_10,
//                           decoration: BoxDecoration(
//                             border: borders.b_1px_grey2,
//                             borderRadius: radius.br_10,
//                           ),
//                           child: Text.rich(TextSpan(
//                               text:
//                               (state.goal! / 1000).toStringAsFixed(1),
//                               style: const TextStyle(
//                                   fontWeight: Fonts.f700,
//                                   fontSize: Fonts.fontSize24,
//                                   fontFamily: Fonts.fontNunito),
//                               children: const <InlineSpan>[
//                                 TextSpan(
//                                     text: " litres",
//                                     style: TextStyle(
//                                         color: AppColors.grey1,
//                                         fontSize: Fonts.fontSize18,
//                                         fontWeight: Fonts.f400)),
//                               ])),
//                         ),
//                       ),
//                       Container(
//                         margin: edge_insets_b_170,
//                         padding: edge_insets_x_16,
//                         child: Flex(
//                           direction: Axis.horizontal,
//                           children: [
//                             Expanded(
//                               child: Row(
//                                 children: [
//                                   Container(
//                                     child: Image.asset(
//                                       "images/bubble.png",
//                                       height: 32,
//                                       width: 32,
//                                     ),
//                                   ),
//                                   Expanded(
//                                     child: SfSliderTheme(
//                                         data: SfSliderThemeData(
//                                             activeTrackHeight: 6,
//                                             inactiveTrackHeight: 6,
//                                             thumbRadius: 8,
//                                             thumbColor: AppColors.white,
//                                             thumbStrokeWidth: 1,
//                                             thumbStrokeColor: AppColors.bgPrimary,
//                                             activeDividerColor:
//                                             AppColors.primary,
//                                             inactiveTrackColor: AppColors.grey3,
//                                             activeTrackColor:
//                                             AppColors.waterPrimary),
//                                         child: SfSlider(
//                                           min: 0.0,
//                                           max: 10000.0,
//                                           value: state.goal,
//                                           // trackShape: _SfTrackShape(),
//                                           onChanged: (value) {
//                                             print("chnaging");
//                                             getCubit(context)
//                                                 .updateGoal(goal: value);
//                                             if (onGoalChanged != null) {
//                                               onGoalChanged!(value);
//                                             }
//                                           },
//                                         )),
//                                   ),
//                                   Container(
//                                     child: Image.asset(
//                                       "images/bubbles.png",
//                                       height: 32,
//                                       width: 32,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                           decoration: BoxDecoration(
//                               color: Colors.white,
//                               border: borders.bt_1px_grey2),
//                           padding: edge_insets_x_24_y_17,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               TextButton(
//                                 onPressed: () => Navigator.pop(context),
//                                 style: TextButton.styleFrom(
//                                     padding: edge_insets_x_24_y_17),
//                                 child: const Text(
//                                   ' cancel ',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                     color: AppColors.bgPrimary,
//                                     fontSize: Fonts.fontSize18,
//                                     fontFamily: Fonts.fontNunito,
//                                     fontWeight: Fonts.f700,
//                                   ),
//                                 ),
//                               ),
//                               TrackerEditTaskActivityGoal(
//                                   controller:
//                                   trackersEditTaskActivityGoalController),
//                               TextButton(
//                                 onPressed: () async {
//                                   print("tac");
//                                   TaskActivityGoal taskActivityGoal =
//                                   await trackersEditTaskActivityGoalController
//                                       .cubit!
//                                       .updateTaskActivityGoal(state
//                                       .taskActivityGoal
//                                       .copyWith(goalValue: state.goal));
//                                   getCubit(context).updateGoal(
//                                       goal: taskActivityGoal.goalValue,
//                                       taskActivityGoal: taskActivityGoal);
//                                   closeModal(
//                                       context,
//                                       ModalData(
//                                           status: BooleanStatus.success,
//                                           data: taskActivityGoal));
//                                 },
//                                 style: TextButton.styleFrom(
//                                     backgroundColor: AppColors.bgPrimary,
//                                     padding: edge_insets_x_40_y_10),
//                                 child: const Text(
//                                   'schedule',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                     color: AppColors.white,
//                                     fontSize: Fonts.fontSize18,
//                                     fontFamily: Fonts.fontNunito,
//                                     fontWeight: Fonts.f700,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ))
//                       // Container(
//                       //   margin: edge_insets_16,
//                       //   padding: edge_insets_b_200,
//                       //   child: Row(
//                       //     children: [
//                       //       Container(
//                       //         padding: edge_insets_r_8,
//                       //         child: const Icon(
//                       //           Icons.error_outline,
//                       //           color: AppColors.textRed,
//                       //         ),
//                       //       ),
//                       //       const Text(
//                       //         "Your hydration amount is too low",
//                       //         style: TextStyle(
//                       //             color: AppColors.textRed,
//                       //             fontSize: Fonts.fontSize14,
//                       //             fontWeight: Fonts.f400,
//                       //             fontFamily: Fonts.fontNunito),
//                       //       )
//                       //     ],
//                       //   ),
//                       // ),
//                     ],
//                   ),
//                 ),
//
//               ],
//             ),
//           ),
//         );
//       },
//     ),
//   );
// }
