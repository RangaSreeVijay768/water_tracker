import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../styles/edge_insets.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '../../../themes/borders.dart';
import '/app/core/widgets/base_form_stateless_widget.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'tracker_drink_feedback_form_controller.dart';
import 'tracker_drink_feedback_form_cubit.dart';



class TrackerDrinkFeedbackForm
    extends BaseFormStatelessWidget<
        TrackerDrinkFeedbackFormController,
        TrackerDrinkFeedbackFormCubit,
        TrackerDrinkFeedbackFormState> {

  TrackerDrinkFeedbackForm({Key? key, super.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerDrinkFeedbackFormCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerDrinkFeedbackFormCubit,
          TrackerDrinkFeedbackFormState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          final formGroup = getCubit(context).formGroup;
          return ReactiveFormBuilder(
            form: () => formGroup,
            builder: (context, form, child) {
              return ReactiveForm(
                  formGroup: formGroup,
                  child: Container(
                    padding: edge_insets_8,
                    child: Column(
                      children: [
                        ReactiveTextField<String>(
                          maxLines: 5,
                          style: const TextStyle(fontWeight: Fonts.f500),
                          formControlName: 'feedback',
                          decoration: const InputDecoration(
                              focusedBorder: InputBorder.none,
                              hintText: 'Tell us how to improve...',
                              hintStyle: TextStyle(color: AppColors.grey4),
                              enabledBorder: InputBorder.none),
                        )
                      ],
                    ),
                  )
              );
            },
          );
        },
      ),
    );
  }

  @override
  TrackerDrinkFeedbackFormCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerDrinkFeedbackFormCubit cubit = TrackerDrinkFeedbackFormCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
