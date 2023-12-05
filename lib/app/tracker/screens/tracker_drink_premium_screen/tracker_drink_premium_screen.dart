import 'package:beebloom_water_tracker/app/styles/edge_insets.dart';
import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
import 'package:beebloom_water_tracker/app/themes/borders.dart';
import 'package:beebloom_water_tracker/app/themes/fonts.dart';
import 'package:beebloom_water_tracker/app/themes/shadows.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'tracker_drink_premium_screen_controller.dart';
import 'tracker_drink_premium_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerDrinkPremiumScreen
    extends BaseStatelessWidget<
        TrackerDrinkPremiumScreenController,
        TrackerDrinkPremiumScreenCubit> {

  const TrackerDrinkPremiumScreen({Key? key, super.controller, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerDrinkPremiumScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerDrinkPremiumScreenCubit,
          TrackerDrinkPremiumScreenState>(
        listener: (context, state) {
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: AppColors.premiumPink,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: (){
                        context.pop(context);
                      },
                      child: const Text("Not now", style: TextStyle(
                          color: AppColors.bgPrimary,
                          fontWeight: Fonts.f700,
                          fontSize: Fonts.fontSize14
                      ),)
                  )
                ],
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: edge_insets_16,
                decoration: const BoxDecoration(
                    gradient: AppColors.premiumBG
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12,),
                    const Text("Choose your plan", style: TextStyle(
                        fontSize: Fonts.fontSize24,
                        fontWeight: Fonts.f700
                    ),),
                    SizedBox(height: 32,),
                    Container(
                      padding: edge_insets_12,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: borderRadius.br_30,
                          boxShadow: [shadows.bs_primary]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Not sure yet? Enable 7 days free trial", style: TextStyle(
                              fontWeight: Fonts.f500,
                              fontSize: Fonts.fontSize14
                          ),),
                          Switch(
                              value: true,
                              thumbColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                return AppColors.white;
                              }),
                              activeColor: AppColors.green,
                              activeTrackColor: AppColors.green,
                              inactiveTrackColor: AppColors.grey4,
                              onChanged: (_){}
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: edge_insets_16,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: borderRadius.br_10,
                          border: const GradientBoxBorder(
                              gradient: AppColors.premiumBorder,
                              width: 2
                          )
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: edge_insets_8,
                                decoration: BoxDecoration(
                                  borderRadius: borderRadius.br_10,
                                  color: AppColors.skyBlue,
                                ),
                                child: GradientText("Yearly plan",
                                  gradientDirection: GradientDirection.ttb,
                                  style: const TextStyle(
                                      fontSize: Fonts.fontSize14,
                                      fontWeight: Fonts.f500
                                  ),
                                  colors: const [
                                    Color.fromRGBO(82, 229, 231, 1),
                                    Color.fromRGBO(19, 12, 183, 1)
                                  ],
                                ),
                              ),
                              const Text("₹999/ 12 month", style: TextStyle(
                                  fontSize: Fonts.fontSize14,
                                  fontWeight: Fonts.f700
                              ),)
                            ],
                          ),
                          SizedBox(height: 16,),
                          Container(
                            padding: edge_insets_12,
                            decoration: BoxDecoration(
                                color: AppColors.grey3,
                                borderRadius: borderRadius.br_10
                            ),
                            child: const Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.check, color: AppColors.green,),
                                    SizedBox(width: 8,),
                                    Text("Completely ads free.", style: TextStyle(
                                        fontWeight: Fonts.f500,
                                        fontSize: Fonts.fontSize14
                                    ),)
                                  ],
                                ),
                                SizedBox(height: 16,),
                                Row(
                                  children: [
                                    Icon(Icons.check, color: AppColors.green,),
                                    SizedBox(width: 8,),
                                    Text("Unlock all cups.", style: TextStyle(
                                        fontWeight: Fonts.f500,
                                        fontSize: Fonts.fontSize14
                                    ),)
                                  ],
                                ),
                                SizedBox(height: 16,),
                                Row(
                                  children: [
                                    Icon(Icons.check, color: AppColors.green,),
                                    SizedBox(width: 8,),
                                    Text("Pro widget access", style: TextStyle(
                                        fontWeight: Fonts.f500,
                                        fontSize: Fonts.fontSize14
                                    ),)
                                  ],
                                ),
                                SizedBox(height: 16,),
                                Row(
                                  children: [
                                    Icon(Icons.check, color: AppColors.green,),
                                    SizedBox(width: 8,),
                                    Text("Advance and detailed analytics", style: TextStyle(
                                        fontWeight: Fonts.f500,
                                        fontSize: Fonts.fontSize14
                                    ),)
                                  ],
                                ),
                                SizedBox(height: 16,),
                                Row(
                                  children: [
                                    Icon(Icons.check, color: AppColors.green,),
                                    SizedBox(width: 8,),
                                    Text("Extra 1 month premium free", style: TextStyle(
                                        fontWeight: Fonts.f500,
                                        fontSize: Fonts.fontSize14
                                    ),)
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 16,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: borderRadius.br_30,
                                gradient: AppColors.premiumBGButton
                            ),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.transparent,
                                    shadowColor: AppColors.transparent
                                ),
                                onPressed: (){},
                                child: const Text("GET 1 YEAR PLAN", style: TextStyle(
                                    fontSize: Fonts.fontSize14,
                                    fontWeight: Fonts.f500,
                                    color: AppColors.white
                                ),)
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: edge_insets_16,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: borderRadius.br_10
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: edge_insets_8,
                                decoration: BoxDecoration(
                                  borderRadius: borderRadius.br_10,
                                  color: AppColors.skyBlue,
                                ),
                                child: GradientText("1 month plan",
                                  gradientDirection: GradientDirection.ttb,
                                  style: const TextStyle(
                                      fontSize: Fonts.fontSize14,
                                      fontWeight: Fonts.f500
                                  ),
                                  colors: const [
                                    Color.fromRGBO(82, 229, 231, 1),
                                    Color.fromRGBO(19, 12, 183, 1)
                                  ],
                                ),
                              ),
                              const Text("₹150/ per month", style: TextStyle(
                                  fontSize: Fonts.fontSize14,
                                  fontWeight: Fonts.f700
                              ),)
                            ],
                          ),
                          SizedBox(height: 16,),
                          Container(
                            padding: edge_insets_12,
                            decoration: BoxDecoration(
                                color: AppColors.grey3,
                                borderRadius: borderRadius.br_10
                            ),
                            child: const Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.check, color: AppColors.green,),
                                    SizedBox(width: 8,),
                                    Text("Completely ads free.", style: TextStyle(
                                        fontWeight: Fonts.f500,
                                        fontSize: Fonts.fontSize14
                                    ),)
                                  ],
                                ),
                                SizedBox(height: 16,),
                                Row(
                                  children: [
                                    Icon(Icons.check, color: AppColors.green,),
                                    SizedBox(width: 8,),
                                    Text("Unlock all cups.", style: TextStyle(
                                        fontWeight: Fonts.f500,
                                        fontSize: Fonts.fontSize14
                                    ),)
                                  ],
                                ),
                                SizedBox(height: 16,),
                                Row(
                                  children: [
                                    Icon(Icons.check, color: AppColors.green,),
                                    SizedBox(width: 8,),
                                    Text("Pro widget access", style: TextStyle(
                                        fontWeight: Fonts.f500,
                                        fontSize: Fonts.fontSize14
                                    ),)
                                  ],
                                ),
                                SizedBox(height: 16,),
                                Row(
                                  children: [
                                    Icon(Icons.check, color: AppColors.green,),
                                    SizedBox(width: 8,),
                                    Text("Advance and detailed analytics", style: TextStyle(
                                        fontWeight: Fonts.f500,
                                        fontSize: Fonts.fontSize14
                                    ),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: borderRadius.br_30,
                                gradient: AppColors.premiumBGButton
                            ),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.transparent,
                                    shadowColor: AppColors.transparent
                                ),
                                onPressed: (){},
                                child: Text("GET 1 YEAR PLAN", style: TextStyle(
                                    fontSize: Fonts.fontSize14,
                                    fontWeight: Fonts.f500,
                                    color: AppColors.white
                                ),)
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 150,)
                  ],
                ),
              ),
            ),
            bottomNavigationBar: Container(
              padding: edge_insets_x_30_y_16,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                    backgroundColor: AppColors.yellow,
                ),
                onPressed: (){},
                child: Text("Start 7 days free trial", style: TextStyle(
                    fontWeight: Fonts.f500,
                    fontSize: Fonts.fontSize18,
                    color: AppColors.textHeading
                ),),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerDrinkPremiumScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerDrinkPremiumScreenCubit cubit = TrackerDrinkPremiumScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
