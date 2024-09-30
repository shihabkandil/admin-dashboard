import 'package:admin_dashboard/common/extensions/context_extensions.dart';
import 'package:admin_dashboard/common/extensions/widgets_extensions.dart';
import 'package:flutter/material.dart';

import 'satisfaction_rate_card.dart';
import 'welcome_card.dart';

class DashboardCards extends StatelessWidget {
  const DashboardCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.zero,
      child: SizedBox(
        height: context.isWide
            ? MediaQuery.sizeOf(context).height / 3
            : MediaQuery.sizeOf(context).height / 5,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const WelcomeCard(name: "Anonymous"),
            16.horizontalSpace,
            const SatisfactionRateCard(),
          ],
        ),
      ),
    );
  }
}
