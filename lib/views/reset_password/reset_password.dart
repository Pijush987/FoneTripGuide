import 'package:avvtar/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:avvtar/configs/configs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:avvtar/bloc/reset_password_bloc/reset_password_bloc.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController emailController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    emailFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
      builder: (context, state) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          // resizeToAvoidBottomInset: true,
          backgroundColor: ThemeConfig.whiteColor,
          appBar: AppBar(
            leading: InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.arrow_back_ios)),
            elevation: 0,
            backgroundColor: ThemeConfig.whiteColor,
          ),
          body: Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.r),
              child: Column(
                spacing: 15.h,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 90.h),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            AppLocalizations.of(context)!.resetPassword,
                            style: TextStyle(
                              fontFamily: Const.poppins,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w800,
                              color: ThemeConfig.primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            AppLocalizations.of(context)!
                                .enterTheEmailAssociatedWithYourAccountAndWellSendAnEmailWithInstructionsToResetYourPassword,
                            style: TextStyle(
                              fontFamily: Const.poppins,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: ThemeConfig.primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 25.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "${AppLocalizations.of(context)!.emailAddress}:",
                            style: TextStyle(
                              fontFamily: Const.poppins,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: ThemeConfig.primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h),

                        // email text field....
                        CustomTextFormField(
                          label:
                              AppLocalizations.of(context)!.john2018HotmailCom,
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          focusNode: emailFocusNode,
                          prefixIcon: CustomExtendedImage(
                            height: 14.h,
                            imageUrl: AssetsPath.emailIcon,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return AppLocalizations.of(context)!
                                  .pleaseEnterAnEmail;
                            }
                            if (value.emailValidator()) {
                              return AppLocalizations.of(context)!
                                  .enterValidEmail;
                            }
                            return null;
                          },
                          callbackAction: () {
                            emailFocusNode.requestFocus();
                          },
                          onChange: (email) => context
                              .read<ResetPasswordBloc>()
                              .add(EmailChanged(email)),
                        ),

                        SizedBox(height: 20.h),

                        Align(
                          alignment: Alignment.bottomCenter,
                          child: CustomButton(
                            title:
                                AppLocalizations.of(context)!.sendInstructions,
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
          ),
        );
      },
    );
  }
}
