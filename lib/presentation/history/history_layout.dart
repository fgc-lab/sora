import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sora/application/history/history_bloc.dart';
import 'package:sora/presentation/core/default_icon_button.dart';
import 'package:sora/presentation/history/widgets/history_pagination_button.dart';
import 'package:sora/utils/pagination.dart';
import 'package:sora/utils/palette.dart';

class HistoryLayout extends StatelessWidget {
  const HistoryLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HistoryBloc, HistoryState>(
      listener: (context, state) {},
      child: Padding(
        padding: const EdgeInsets.only(right: 7.5, top: 7.5, bottom: 7.5),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<HistoryBloc, HistoryState>(
                  builder: (context, state) {
                    if (state.downloadInfos.isEmpty) {
                      return const Center(child: Text('No history found!'));
                    }

                    return ListView.separated(
                      itemCount: state.downloadInfos.length,
                      itemBuilder: (context, idx) {
                        final downloadInfo = state.downloadInfos[idx];

                        return ListTile(
                          title: Text(downloadInfo.url.getOrCrash()),
                        );
                      },
                      separatorBuilder: (context, _) => const Divider(),
                    );
                  },
                ),
              ),
              BlocBuilder<HistoryBloc, HistoryState>(
                builder: (context, state) {
                  if (state.itemsCount == 0) {
                    return Container();
                  }

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultIconButton(
                        icon: Icons.arrow_back_ios_rounded,
                        onPressed: () {},
                      ),
                      for (
                        int i = 0;
                        i < (state.itemsCount / Pagination.historyItemPerPage);
                        i++
                      )
                        HistoryPaginationButton(
                          title: '${i + 1}',
                          onPressed: () {},
                          color:
                              i + 1 == state.paginationIdx
                                  ? Palette.black
                                  : Palette.white,
                        ),
                      DefaultIconButton(
                        icon: Icons.arrow_forward_ios_rounded,
                        onPressed: () {},
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
