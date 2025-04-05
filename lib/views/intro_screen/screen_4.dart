import 'package:avvtar/services/location/location_service.dart';

import '../../utils/utils.dart';
import '../../configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: ThemeConfig.whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        spacing: 15,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50.h, left: 10.w, right: 10.w),
            child: CustomExtendedImage(
              height: 300.h,
              imageUrl: AssetsPath.introImg4,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Text(
            AppLocalizations.of(context)!.enableYourLocation,
            style: TextStyle(
              fontFamily: Const.poppins,
              fontSize: 30.sp,
              fontWeight: FontWeight.w700,
              color: ThemeConfig.primaryColor,
            ),
          ),
          SizedBox(
            width: 300.w,
            child: Text(
              AppLocalizations.of(context)!
                  .chooseYourLocationToStartFindTheRequestAroundYou,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: Const.poppins,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: ThemeConfig.primaryColor,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomButton(
              margin: EdgeInsets.only(top: 20.h),
              title: AppLocalizations.of(context)!.enableLocation,
              width: 180.w,
              height: 32.h,
              borderRadios: 100.r,
              textStyle: TextStyle(
                fontFamily: Const.poppins,
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: ThemeConfig.whiteColor,
              ),
              onPress: () async {
                // In your widget or business logic
                final locationService = LocationService();
                final position = await locationService.getCurrentLocation();

                if (position != null) {
                  print('Latitude: ${position.latitude}');
                  print('Longitude: ${position.longitude}');
                } else {
                  final position = await locationService.getCurrentLocation();
                  print('Unable to get location');
                }
              },
            ),
          ),
          SizedBox(height: 10.h),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomTextButton(
              title: AppLocalizations.of(context)!.skipForNow,
              width: 150.w,
              height: 30.h,
              textStyle: TextStyle(
                fontFamily: Const.poppins,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: ThemeConfig.buttonTextColor1,
              ),
              onPress: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, RoutesName.signUp, (route) => false);
                // Navigate to the login screen
                // Navigator.pushNamed(context, Routes.login);
              },
            ),
          ),
        ],
      ),
    );
  }

  onEnableLocation() {}
}
