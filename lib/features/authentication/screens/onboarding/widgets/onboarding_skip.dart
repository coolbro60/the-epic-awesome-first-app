import 'package:MediCheck/util/constants/sizes.dart';
import 'package:MediCheck/util/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../controllers/onboarding_controller.dart';



class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(), child: const Text('Skip')),
    );
  }
}
