import 'package:admin_dashboard/common/extensions/widgets_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/extensions/context_extensions.dart';
import 'header_analytics_card.dart';

class HeaderCardsList extends StatelessWidget {
  const HeaderCardsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            22.horizontalSpace,
            HeaderAnalyticsCard(
              title: context.localizer.todaysMoney,
              percentage: 55,
              value: "\$53,000",
              icon: Icons.wallet,
            ),
            16.horizontalSpace,
            HeaderAnalyticsCard(
              title: context.localizer.todaysUsers,
              percentage: 5,
              value: "2300",
              icon: Icons.wallet,
            ),
            16.horizontalSpace,
            HeaderAnalyticsCard(
              title: context.localizer.newClients,
              percentage: -15,
              value: "3000",
              icon: CupertinoIcons.doc,
            ),
            16.horizontalSpace,
            HeaderAnalyticsCard(
              title: context.localizer.totalSales,
              percentage: 55,
              value: "\$53,000",
              icon: CupertinoIcons.cart_fill,
            ),
          ],
        ),
      ),
    );
  }
}
