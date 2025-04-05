import '../../configs/configs.dart';
import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import '../sign_up/widgets/background_img.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:avvtar/configs/components/pin_input_widget.dart';
import 'package:avvtar/bloc/phone_number_verify_bloc/phone_number_verify_bloc.dart';

class NumberVerification extends StatefulWidget {
  const NumberVerification({super.key});

  @override
  State<NumberVerification> createState() => _NumberVerificationState();
}

class _NumberVerificationState extends State<NumberVerification> {
  final TextEditingController inputCodeController = TextEditingController();
  final FocusNode inputCodeFocusNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();

    inputCodeController.dispose();
    inputCodeFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneNumberVerifyBloc, PhoneNumberVerifyState>(
      builder: (context, state) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          // resizeToAvoidBottomInset: true,
          backgroundColor: ThemeConfig.whiteColor,
          body: Form(
            key: formKey,
            child: Column(
              spacing: 15.h,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        splashColor: ThemeConfig.transparent,
                        highlightColor: ThemeConfig.transparent,
                        hoverColor: ThemeConfig.transparent,
                        focusColor: ThemeConfig.transparent,
                        onTap: () {
                          // Remove TextField Focus
                          FocusScopeNode currentFocus = FocusScope.of(context);
                          if (!currentFocus.hasPrimaryFocus) {
                            currentFocus.focusedChild?.unfocus();
                          }
                        },
                        child: Backgroundimg(
                          content: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.getYourCode,
                                  style: TextStyle(
                                    fontFamily: Const.poppins,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w800,
                                    color: ThemeConfig.whiteColor,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 48.w,
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .enter4DigitCode,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: Const.poppins,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: ThemeConfig.whiteColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40.h),

                      // verification code field....
                      PinInputWidget(
                        controller: inputCodeController,
                        focusNode: inputCodeFocusNode,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return AppLocalizations.of(context)!
                                .pleaseEnterAnEmail;
                          }
                          if (value.length != 4) {
                            return AppLocalizations.of(context)!
                                .codeShouldbe4Digit;
                          }
                          if (value.pinValidator()) {
                            return AppLocalizations.of(context)!
                                .codeIsNotCorrect;
                          }
                          if (value.emailValidator()) {
                            return AppLocalizations.of(context)!
                                .enterValidEmail;
                          }
                          return null;
                        },
                        onChange: (input) => context
                            .read<PhoneNumberVerifyBloc>()
                            .add(VerificationCodeCheck(input)),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.ifYouDontReceiveCode,
                            style: TextStyle(
                              fontFamily: Const.poppins,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: ThemeConfig.primaryColor,
                            ),
                          ),
                          CustomTextButton(
                            title: AppLocalizations.of(context)!.resend,
                            width: 150.w,
                            height: 30.h,
                            textStyle: TextStyle(
                              fontFamily: Const.poppins,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: ThemeConfig.textColorff5c02,
                            ),
                            onPress: () {},
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomButton(
                          title: AppLocalizations.of(context)!.verifyAndProceed,
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
                            if (formKey.currentState!.validate()) {}
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
