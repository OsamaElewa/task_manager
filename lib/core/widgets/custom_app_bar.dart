import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:tasks_app/config/icons/icons_broken.dart';
import 'package:tasks_app/core/utils/app_colors.dart';
import 'package:tasks_app/core/utils/app_constants.dart';
import 'package:tasks_app/core/utils/app_styles.dart';
import 'package:tasks_app/core/widgets/logout_icon_button_.dart';
import 'package:tasks_app/features/home/presentation/cubits/animated_drawer_cubit/animated_drawer_cubit.dart';
import 'package:tasks_app/features/home/presentation/cubits/animated_drawer_cubit/animated_drawer_state.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.rightWidget, this.isUser = false})
      : super(key: key);

  final Widget rightWidget;
  final bool? isUser;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: AppConstants.padding5w,
        ),
        isUser == false
            ? const LogoutIconButton()
            : BlocBuilder<AnimatedDrawerCubit, AnimatedDrawerState>(
                builder: (context, state) {
                  return IconButton(
                    icon: AnimatedDrawerCubit.get(context).isOpenDrawer
                        ? Icon(
                            IconBroken.Arrow___Left_2,
                            size: AppConstants.iconSize33,
                            color: AppColors.deepPurple,
                          )
                        : Icon(
                            IconBroken.Filter,
                            size: AppConstants.iconSize28,
                            color: AppColors.deepPurple,
                          ),
                    onPressed: () {
                      AnimatedDrawerCubit.get(context).isOpenDrawer
                          ? AnimatedDrawerCubit.get(context).closeDrawer()
                          : AnimatedDrawerCubit.get(context).openDrawer();
                    },
                  );
                },
              ),
        SizedBox(
          width: AppConstants.padding5w,
        ),
        Column(
          children: [
            Text(
              'Today',
              style:
                  AppStyles.textStyle18.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              DateFormat('dd/mm/yyyyy').format(DateTime.now()),
              style: AppStyles.textStyle14,
            ),
          ],
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.only(right: AppConstants.defaultPadding),
          child: rightWidget,
        ),
      ],
    );
  }
}