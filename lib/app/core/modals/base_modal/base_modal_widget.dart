import 'package:beebloom_water_tracker/app/core/controllers/base_modal_controller.dart';
import 'package:beebloom_water_tracker/app/core/modals/base_modal/base_modal_cubit.dart';
import 'package:beebloom_water_tracker/app/core/models/modal_data.dart';
import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseModalWidget<T extends BaseModalController,
    B extends BaseModalCubit, M> extends BaseStatelessWidget<T, B> {
  BaseModalWidget({Key? key, this.onModalClosed, super.controller})
      : super(key: key);

  Function(ModalData<M>)? onModalClosed;

  Future<T?> openModal<T>(
      {required BuildContext context, required BlocBase cubit}) {
    getCubit(context).openModal();
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return BlocProvider.value(
            value: cubit,
            child: getModalContentWidget(context: context),
          );
        }).then((value) {
      getCubit(context).closeModal();
      if (this.onModalClosed != null) {
        this.onModalClosed!(value);
      }
      return null;
    });
  }

  Widget getModalContentWidget({required BuildContext context});
}
