import '../../utils/utils.dart';
import '../../configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: ThemeConfig.whiteColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        spacing: 15,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50.h),
            child: CustomExtendedImage(
              height: 350.h,
              imageUrl: AssetsPath.introImg3,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Center(
            child: Text(
              AppLocalizations.of(context)!.earnMoney,
              style: TextStyle(
                fontFamily: Const.poppins,
                fontSize: 30.sp,
                fontWeight: FontWeight.w700,
                color: ThemeConfig.primaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: 360.w,
              child: Text(
                AppLocalizations.of(context)!.earnMoneyText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: Const.poppins,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: ThemeConfig.primaryColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomButton(
              title: AppLocalizations.of(context)!.getStarted,
              width: 180.w,
              height: 32.h,
              borderRadios: 100.r,
              textStyle: TextStyle(
                fontFamily: Const.poppins,
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: ThemeConfig.whiteColor,
              ),
              onPress: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, RoutesName.introScreen4, (route) => false);
              },
            ),
          ),
        ],
      ),
    );
  }
}
