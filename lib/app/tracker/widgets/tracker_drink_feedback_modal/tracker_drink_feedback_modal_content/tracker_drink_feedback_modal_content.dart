import 'package:beebloom_water_tracker/app/app.dart';
import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/models/modal_data.dart';
import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/borders.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:beebloom_water_tracker/app/themes/shadows.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../services/rating_bar.dart';
import '../../tracker_drink_feedback_form/tracker_drink_feedback_form.dart';
import '/app/core/modals/base_modal_content/base_modal_content_widget.dart';
import '../tracker_drink_feedback_modal_data.dart';
import 'tracker_drink_feedback_modal_content_controller.dart';
import 'tracker_drink_feedback_modal_content_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerDrinkFeedbackModalContent
    extends BaseModalContent<
        TrackerDrinkFeedbackModalContentController,
        TrackerDrinkFeedbackModalContentCubit,
        TrackerDrinkFeedbackModalContentState> {

  TrackerDrinkFeedbackModalContent(
      {Key? key, super.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerDrinkFeedbackModalContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerDrinkFeedbackModalContentCubit,
          TrackerDrinkFeedbackModalContentState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: Text(" "),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: edge_insets_16,
                  decoration: BoxDecoration(
                      border: borders.bb_1px_grey4
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Feedback", style: TextStyle(
                          fontWeight: Fonts.f700,
                          fontSize: Fonts.fontSize24
                      ),),
                      IconButton(
                          onPressed: (){
                            closeModal(context, ModalData(status: BooleanStatus.success));
                          },
                          icon: Icon(Icons.close)
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 28,),
                          Image.asset("images/feedback.png"),
                          Container(
                            padding: edge_insets_x_16,
                            margin: edge_insets_t_32,
                            child: Text("How was your experience?", style: TextStyle(
                                fontWeight: Fonts.f700,
                                fontSize: Fonts.fontSize16
                            ),),
                          ),
                          Container(
                            padding: edge_insets_16,
                            child: RatingBar.builder(
                              initialRating: 3.0,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              unratedColor: Colors.amber.withAlpha(50),
                              itemCount: 5,
                              itemSize: 50.0,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (_){},
                              updateOnDrag: true,
                            ),
                          ),
                          Container(
                            margin: edge_insets_t_12,
                            padding: edge_insets_x_16,
                            child: Text("How we can improve?",
                              style: TextStyle(
                                fontWeight: Fonts.f700,
                                fontSize: Fonts.fontSize16
                            ),),
                          ),
                          Container(
                            margin: edge_insets_16,
                            decoration: BoxDecoration(
                                boxShadow: [shadows.bs_grey],
                                color: AppColors.white,
                                borderRadius: borderRadius.br_10
                            ),
                            child: TrackerDrinkFeedbackForm(),
                          )
                        ],
                      ),
                    )
                )
              ],
            ),
            bottomNavigationBar: Container(
              padding: edge_insets_y_16,
              child: Row(
                children: [
                  SizedBox(width: 16,),
                  Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: AppColors.bgPrimary,
                            padding: edge_insets_y_16
                        ),
                        onPressed: (){},
                        child: Text("Send feedback", style: TextStyle(
                            color: AppColors.white,
                            fontSize: Fonts.fontSize12,
                            fontWeight: Fonts.f500
                        ),),
                      )
                  ),
                  SizedBox(width: 16,),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerDrinkFeedbackModalContentCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerDrinkFeedbackModalContentCubit cubit = TrackerDrinkFeedbackModalContentCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}


