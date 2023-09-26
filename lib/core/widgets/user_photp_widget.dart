import 'package:flutter/material.dart';
import 'package:tasks_app/core/utils/app_constants.dart';
import 'package:tasks_app/core/utils/app_strings.dart';

class UserPhotoWidget extends StatelessWidget {
  const UserPhotoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: AppConstants.radius30sp,
      child: CircleAvatar(
        radius: AppConstants.radius28sp,
        child: Image.asset(
          AppStrings.userImage,
        ),
      ),
    );
  }
}
