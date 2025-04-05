import 'dart:math' as math;
import '../../utils/utils.dart';
import '../../configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:avvtar/services/splash/splash_services.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final SplashServices splashServices = SplashServices();

  @override
  void initState() {
    super.initState();
    // Calls the [checkAuthentication] method from [SplashServices] to handle authentication logic
    splashServices.checkAuthentication(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: ThemeConfig.splashScreenBackgroundColor,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: CustomExtendedImage(
                width: ScreenUtil().screenWidth,
                height: 335.h,
                fit: BoxFit.cover,
                imageUrl: AssetsPath.splashBG,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Column(
            spacing: 10,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 194.h),
                child: CustomExtendedImage(
                  width: 600.w,
                  height: 130.h,
                  imageUrl: AssetsPath.foneTrip,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Center(
                child: Text(
                  AppLocalizations.of(context)!.appTitle,
                  style: TextStyle(
                    fontFamily: Const.poppins,
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w700,
                    color: ThemeConfig.primaryColor,
                  ),
                ),
              ),
              CustomButton(
                title: AppLocalizations.of(context)!.joinNow,
                margin: EdgeInsets.only(top: 30.h),
                width: 150.w,
                height: 30.h,
                borderRadios: 100.r,
                textStyle: TextStyle(
                  fontFamily: Const.poppins,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: ThemeConfig.whiteColor,
                ),
                onPress: () {
                  // Navigate to the login screen
                  // Navigator.pushNamed(context, Routes.login);
                },
              ),
              SizedBox(
                width: 170.w,
                child: Text(
                  AppLocalizations.of(context)!.makeYourMoneyOnYourOwnTime,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: Const.poppins,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: ThemeConfig.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
