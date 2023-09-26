import 'package:flutter/material.dart';
import 'package:tasks_app/core/utils/app_colors.dart';
import 'package:tasks_app/core/utils/app_constants.dart';
import 'package:tasks_app/features/home/presentation/views/widgets/drawer_buttons_section.dart';
import 'package:tasks_app/features/home/presentation/views/widgets/drawer_logout_button.dart';
import 'package:tasks_app/features/home/presentation/views/widgets/drawer_user_data.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.deepPurple,
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(
          top: AppConstants.padding45h,
          bottom: AppConstants.padding45h,
          left: AppConstants.padding15h,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DrawerUserData(),
            DrawerButtonsSection(),
            DrawerLogoutButton(),
          ],
        ),
      ),
    );
  }
}
