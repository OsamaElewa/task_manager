import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_app/core/utils/app_constants.dart';
import 'package:tasks_app/features/home/presentation/cubits/animated_drawer_cubit/animated_drawer_cubit.dart';
import 'package:tasks_app/features/home/presentation/cubits/animated_drawer_cubit/animated_drawer_state.dart';
import 'package:tasks_app/features/home/presentation/views/drawer_view.dart';
import 'package:tasks_app/features/home/presentation/views/home_view.dart';

class AnimatedDrawerView extends StatelessWidget {
  const AnimatedDrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimatedDrawerCubit, AnimatedDrawerState>(
      builder: (context, state) {
        return Scaffold(
          body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: AnimatedDrawerCubit.get(context).isOpenDrawer
                ? AppConstants.systemUiOverlayStyleForDrawer
                : AppConstants.systemUiOverlayStyle,
            child: Stack(
              children: [
                const DrawerView(),
                AnimatedContainer(
                  transform: Matrix4.translationValues(
                      AnimatedDrawerCubit.get(context).xOffset2,
                      AnimatedDrawerCubit.get(context).yOffset2,
                      0)
                    ..scale(AnimatedDrawerCubit.get(context).scaleFactor2),
                  duration: const Duration(milliseconds: 500),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(
                          AnimatedDrawerCubit.get(context).isOpenDrawer
                              ? 20
                              : 0.0)),
                ),
                const HomeView(),
              ],
            ),
          ),
        );
      },
    );
  }
}
