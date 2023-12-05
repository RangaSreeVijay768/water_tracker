import 'package:beebloom_water_tracker/app/core/controllers/base_controller.dart';
import 'package:beebloom_water_tracker/app/core/models/modal_data.dart';
import 'package:beebloom_water_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseModalContent<L extends BaseController, C extends BlocBase, M>
    extends BaseStatelessWidget<L, C> {
  closeModal(BuildContext context, ModalData<M> modalData) {
    Navigator.pop(context, modalData);
  }

  const BaseModalContent({super.key, super.controller});
}
