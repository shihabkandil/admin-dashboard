import 'package:admin_dashboard/common/extensions/widgets_extensions.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../widgets/header_cards_list.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          20.verticalSpace,
          const HeaderCardsList(),
        ],
      ),
    );
  }
}
