import 'dart:math';

import 'package:beebloom_water_tracker/app/core/logger/log.dart';
import 'package:beebloom_water_tracker/app/core/widgets/expanded_section/expanded_section_controller.dart';
import 'package:flutter/cupertino.dart';

class ExpandedSection extends StatefulWidget {
  final Widget child;
  bool expand;

  final ExpandedSectionController expandedSectionController;

  ExpandedSection(
      {this.expand = false,
      required this.expandedSectionController,
      required this.child});

  @override
  _ExpandedSectionState createState() =>
      _ExpandedSectionState(this.expandedSectionController);
}

class _ExpandedSectionState extends State<ExpandedSection>
    with SingleTickerProviderStateMixin {
  final ExpandedSectionController expandedSectionController;
  late AnimationController expandController;
  late Animation<double> animation;

  _ExpandedSectionState(this.expandedSectionController) {
    this.expandedSectionController.clickEventEmitter.addListener(() {
      logger.d('checking' +
          this.expandedSectionController.clickEventEmitter.value.toString());
      widget.expand = this.expandedSectionController.clickEventEmitter.value;
      this._runExpandCheck(this.expandedSectionController.clickEventEmitter.value);
    });
  }

  @override
  void initState() {
    super.initState();
    prepareAnimations();
    _runExpandCheck(null);
  }

  ///Setting up the animation
  void prepareAnimations() {
    expandController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    animation = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
  }

  void _runExpandCheck(bool? show) {
    show=show??widget.expand;
    logger.d(show);
    logger.d('Handling run expand check');
    if (show) {
      logger.d('showing widget');
      expandController.forward();
      Future.delayed(Duration(seconds: 5),(){
        expandedSectionController.clickEventEmitter.value=false;
      });
    } else {
      logger.d('not showing widget');
      expandController.reverse();
    }
  }

  @override
  void didUpdateWidget(ExpandedSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    _runExpandCheck(null);
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
        axisAlignment: 1.0, sizeFactor: animation, child: widget.child);
  }
}
