import 'package:flutter/material.dart';

import '../../../../common/constants/theme/app_theme_data.dart';
import '../../../../common/extensions/context_extensions.dart';
import '../../../../common/extensions/widgets_extensions.dart';
import '../../../../gen/assets.gen.dart';
import 'auth_animated_switcher.dart';

class AuthWideBody extends StatelessWidget {
  const AuthWideBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Assets.images.banner.image(fit: BoxFit.fill),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.localizer.inspiredByTheFuture,
                    style: context.textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    context.localizer.theVisionUiDashboard,
                    style: context.textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: SizedBox(
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  const AuthAnimatedSwitcher(),
                  12.verticalSpace,
                  const Spacer(),
                  Text(
                    context.localizer.designedBySimmmple,
                    style: context.textTheme.bodySmall,
                  ),
                  Text(
                    context.localizer.developedByShihabKandil,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: Colors.blue,
                    ),
                  ),
                  20.verticalSpace,
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
