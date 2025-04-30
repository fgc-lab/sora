import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sora/domain/dashboard/dashboard_item.dart';
import 'package:sora/utils/palette.dart';

class DashboardListTile extends StatelessWidget {
  const DashboardListTile({
    required this.item,
    required this.itemIdx,
    required this.currentIdx,
    super.key,
  });

  final DashboardItem item;

  final int itemIdx;

  final int currentIdx;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: Palette.grey),
        borderRadius: BorderRadius.circular(5),
        color: itemIdx == currentIdx ? Palette.black : Palette.white,
      ),
      child: ListTile(
        title: Text(
          item.title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: itemIdx == currentIdx ? Palette.white : Palette.black,
          ),
        ),
        leading: Icon(
          item.icon,
          color: itemIdx == currentIdx ? Palette.white : Palette.black,
        ),
        onTap: () => context.router.push(item.route),
      ),
    );
  }
}
