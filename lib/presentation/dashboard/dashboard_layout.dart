import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sora/application/dashboard/dashboard_cubit.dart';
import 'package:sora/presentation/core/default_icon_button.dart';
import 'package:sora/presentation/routes/router.gr.dart';
import 'package:sora/utils/palette.dart';

class DashboardLayout extends StatelessWidget {
  const DashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(7.5),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: BlocBuilder<DashboardCubit, DashboardState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () => context.read<DashboardCubit>().toggleDrawer(),
                  child: AnimatedSize(
                    duration: const Duration(milliseconds: 100),
                    onEnd:
                        () => context.read<DashboardCubit>().toggleListTiles(
                          fromAnimationEnd: true,
                        ),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      width: state.isDrawerExpanded ? 250 : null,
                      decoration: BoxDecoration(
                        border: Border.all(color: Palette.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (state.useListTiles)
                                ListTile(
                                  onTap:
                                      () => context.router.push(
                                        const HomeRoute(),
                                      ),
                                  leading: Icon(
                                    Icons.home_rounded,
                                    color: Palette.black,
                                  ),
                                  title: const Text('Home'),
                                )
                              else
                                DefaultIconButton(
                                  onPressed:
                                      () => context.router.push(
                                        const HomeRoute(),
                                      ),
                                  icon: Icons.home_rounded,
                                ),
                              // IconButton.filled(
                              //   onPressed:
                              //       () =>
                              //           context.router.push(const LibraryRoute()),
                              //   icon: Icon(Icons.shelves, color: Palette.black),
                              // ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment:
                                state.isDrawerExpanded
                                    ? MainAxisAlignment.end
                                    : MainAxisAlignment.center,
                            children: [
                              DefaultIconButton(
                                onPressed:
                                    () =>
                                        context
                                            .read<DashboardCubit>()
                                            .toggleDrawer(),
                                icon:
                                    state.isDrawerExpanded
                                        ? Icons.arrow_back_ios_new_rounded
                                        : Icons.arrow_forward_ios_rounded,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const Expanded(child: AutoRouter()),
      ],
    );
  }
}
