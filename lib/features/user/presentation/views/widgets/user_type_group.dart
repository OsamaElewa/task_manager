import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_app/core/utils/app_styles.dart';
import 'package:tasks_app/features/user/presentation/cubits/create_user_cubit/cretae_user_cubit.dart';
import 'package:tasks_app/features/user/presentation/cubits/create_user_cubit/create_user_state.dart';

class UserTypeGroup extends StatelessWidget {
  const UserTypeGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateUserCubit, CreateUserState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RadioMenuButton(
                value: 0,
                groupValue: CreateUserCubit.get(context).groupValue,
                onChanged: (value) {
                  CreateUserCubit.get(context).changeGroupValue(newValue: value!);
                },
                child: Text(
                  'Admin',
                  style: AppStyles.textStyle14,
                ),
              ),
              RadioMenuButton(
                value: 1,
                groupValue: CreateUserCubit.get(context).groupValue,
                child: Text(
                  'Manager',
                  style: AppStyles.textStyle14,
                ),
                onChanged: (value) {
                  CreateUserCubit.get(context).changeGroupValue(newValue: value!);
                },
              ),
              RadioMenuButton(
                value: 2,
                groupValue: CreateUserCubit.get(context).groupValue,
                child: Text(
                  'Employee',
                  style: AppStyles.textStyle14,
                ),
                onChanged: (value) {
                  CreateUserCubit.get(context).changeGroupValue(newValue: value!);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
