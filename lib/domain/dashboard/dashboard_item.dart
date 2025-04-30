import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DashboardItem {
  DashboardItem({required this.title, required this.icon, required this.route});

  final String title;

  final IconData icon;

  final PageRouteInfo route;
}
