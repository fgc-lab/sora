import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
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
                          title: Text(
                            downloadInfo.url.getOrCrash(),
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            downloadInfo.updatedAt != null
                                ? DateFormat().format(downloadInfo.updatedAt!)
                                : '',
                            style: const TextStyle(color: Palette.grey),
                          ),
                          trailing: DefaultIconButton(
                            icon: Icons.open_in_new_rounded,
                            onPressed:
                                () => context.read<HistoryBloc>().add(
                                  HistoryEvent.openInNewPressed(downloadInfo),
                                ),
                          ),
                        );
                      },
                      separatorBuilder: (context, _) => const Divider(),
                    );
                  },
                ),
              ),
              DecoratedBox(
                decoration: const BoxDecoration(
                  border: Border(top: BorderSide(color: Palette.greyLight)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: BlocBuilder<HistoryBloc, HistoryState>(
                    builder: (context, state) {
                      if (state.itemsCount == 0) {
                        return Container();
                      }

                      final pages =
                          state.itemsCount / Pagination.historyItemPerPage;

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (pages > 1)
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 2.5,
                              ),
                              child: DefaultIconButton(
                                icon: Icons.arrow_back_ios_rounded,
                                onPressed: () {},
                              ),
                            ),
                          for (int i = 0; i < pages; i++)
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 2.5,
                              ),
                              child: HistoryPaginationButton(
                                title: '${i + 1}',
                                onPressed: () {},
                                color:
                                    i + 1 == state.paginationIdx
                                        ? Palette.black
                                        : Palette.white,
                              ),
                            ),
                          if (pages > 1)
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 2.5,
                              ),
                              child: DefaultIconButton(
                                icon: Icons.arrow_forward_ios_rounded,
                                onPressed: () {},
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
