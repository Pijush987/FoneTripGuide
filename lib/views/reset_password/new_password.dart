import 'package:avvtar/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:avvtar/configs/configs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:avvtar/bloc/reset_password_bloc/reset_password_bloc.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmNewPasswordController =
      TextEditingController();

  final FocusNode newPasswordFocusNode = FocusNode();
  final FocusNode conformNewPasswordFocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    newPasswordController.dispose();
    confirmNewPasswordController.dispose();
    newPasswordFocusNode.dispose();
    conformNewPasswordFocusNode.dispose();
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
            leading: Icon(Icons.arrow_back_ios),
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
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 90.h),

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              AppLocalizations.of(context)!.createNewPassword,
                              style: TextStyle(
                                fontFamily: Const.poppins,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w800,
                                color: ThemeConfig.primaryColor,
                              ),
                            ),
                          ),
                          SizedBox(height: 15.h),

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              AppLocalizations.of(context)!
                                  .yourNewPasswordMustBeDifferentFromPreviousUsedPasswords,
                              style: TextStyle(
                                fontFamily: Const.poppins,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                color: ThemeConfig.primaryColor,
                              ),
                            ),
                          ),
                          SizedBox(height: 30.h),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              AppLocalizations.of(context)!.enterNewPassword,
                              style: TextStyle(
                                fontFamily: Const.poppins,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                color: ThemeConfig.primaryColor,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),

                          // new password text field....
                          CustomTextFormField(
                            label: "*******",
                            keyboardType: TextInputType.text,
                            controller: newPasswordController,
                            focusNode: newPasswordFocusNode,
                            suffixIcon: IconButton(
                                iconSize: 25.r,
                                onPressed: () {
                                  context.read<ResetPasswordBloc>().add(
                                      PasswordVisible(
                                          !state.isPasswordVisible));
                                },
                                icon: !state.isPasswordVisible
                                    ? Icon(Icons.visibility_outlined)
                                    : Icon(Icons.visibility_off_outlined)),
                            obscureText: state.isPasswordVisible,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return AppLocalizations.of(context)!
                                    .pleaseEnterAnPassword;
                              }
                              if (value.length < 8) {
                                return AppLocalizations.of(context)!
                                    .mustBeAtleast8Characters;
                              }
                              return null;
                            },
                            callbackAction: () {
                              newPasswordFocusNode.requestFocus();
                            },
                            onChange: (password) => context
                                .read<ResetPasswordBloc>()
                                .add(NewPasswordChange(password)),
                          ),

                          SizedBox(height: 30.h),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              AppLocalizations.of(context)!.confirmPassword,
                              style: TextStyle(
                                fontFamily: Const.poppins,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                color: ThemeConfig.primaryColor,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),

                          // confirm new password text field....
                          CustomTextFormField(
                            label: "*******",
                            keyboardType: TextInputType.emailAddress,
                            controller: confirmNewPasswordController,
                            focusNode: conformNewPasswordFocusNode,
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return AppLocalizations.of(context)!
                                    .pleaseEnterAnPassword;
                              }
                              if (state.confirmNewPassword !=
                                  state.newPassword) {
                                return AppLocalizations.of(context)!
                                    .pleaseCheckYourPassword;
                              }
                              return null;
                            },
                            callbackAction: () {
                              conformNewPasswordFocusNode.requestFocus();
                            },
                            onChange: (password) => context
                                .read<ResetPasswordBloc>()
                                .add(ConfirmPasswordChange(password)),
                          ),

                          SizedBox(height: 20.h),

                          Align(
                            alignment: Alignment.bottomCenter,
                            child: CustomButton(
                              title:
                                  AppLocalizations.of(context)!.resetPassword,
                              width: 250.w,
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
