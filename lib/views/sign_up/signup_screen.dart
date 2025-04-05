import '../../utils/utils.dart';
import '../../configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/signup_bloc/signup_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:avvtar/views/sign_up/widgets/background_img.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController userController = TextEditingController();
  final FocusNode userFocusNode = FocusNode();

  final TextEditingController emailController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();

  final TextEditingController phoneController = TextEditingController();
  final FocusNode phoneFocusNode = FocusNode();

  final TextEditingController passwordController = TextEditingController();
  final FocusNode passwordFocusNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    userController.dispose();
    userFocusNode.dispose();
    emailController.dispose();
    emailFocusNode.dispose();
    phoneController.dispose();
    phoneFocusNode.dispose();
    passwordController.dispose();
    passwordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupBloc, SignupState>(
      buildWhen: (previous, current) =>
          previous.postApiStatus != current.postApiStatus,
      listener: (context, state) => {
        if (state.postApiStatus == PostApiStatus.loading)
          {showCustomLoader(context, 50)},
        if (state.postApiStatus == PostApiStatus.success)
          {
            stopCustomLoader(context),
            context.flushBarSuccessMessage(message: state.message)
          },
        if (state.postApiStatus == PostApiStatus.error)
          {
            stopCustomLoader(context),
            context.flushBarErrorMessage(message: state.message)
          }
      },
      builder: (context, state) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          // resizeToAvoidBottomInset: true,
          backgroundColor: ThemeConfig.whiteColor,
          body: Form(
            key: formKey,
            child: SizedBox(
              height: ScreenUtil().screenHeight,
              width: ScreenUtil().screenWidth,
              child: SingleChildScrollView(
                child: Stack(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.signUp,
                                style: TextStyle(
                                  fontFamily: Const.poppins,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w800,
                                  color: ThemeConfig.whiteColor,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                AppLocalizations.of(context)!
                                    .withEmailAndPhoneNumber,
                                style: TextStyle(
                                  fontFamily: Const.poppins,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w400,
                                  color: ThemeConfig.whiteColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: 250.h, left: 20.w, right: 20.w),
                      padding: EdgeInsets.all(20.r),
                      decoration: BoxDecoration(
                          color: ThemeConfig.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 8,
                              spreadRadius: 3,
                              color: Color.fromRGBO(0, 0, 0, 0.16),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Column(
                        spacing: 20,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppLocalizations.of(context)!
                                .createAccountWithYourFollowingDetails,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: Const.poppins,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: ThemeConfig.primaryColor,
                            ),
                          ),

                          // user name text from field....
                          CustomTextFormField(
                            label: AppLocalizations.of(context)!.enterYourName,
                            controller: userController,
                            focusNode: userFocusNode,
                            keyboardType: TextInputType.text,
                            prefixIcon: CustomExtendedImage(
                              height: 14.h,
                              imageUrl: AssetsPath.personIcon,
                            ),
                            validatorText: state.isNameFieldEmpty,
                            callbackAction: () {
                              userFocusNode.requestFocus();
                            },
                            onChange: (text) => context
                                .read<SignupBloc>()
                                .add(TextChanged(text)),
                          ),

                          // email text from field....
                          CustomTextFormField(
                            label: AppLocalizations.of(context)!.enterYourEmail,
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            focusNode: emailFocusNode,
                            prefixIcon: CustomExtendedImage(
                              height: 14.h,
                              imageUrl: AssetsPath.emailIcon,
                            ),
                            validatorText: state.isEmailFieldEmpty,
                            callbackAction: () {
                              emailFocusNode.requestFocus();
                            },
                            onChange: (email) => context
                                .read<SignupBloc>()
                                .add(EmailChanged(email)),
                          ),

                          // phone number text from field....
                          CustomCountruCodePickerTextField(
                            label:
                                AppLocalizations.of(context)!.enterMobileNumber,
                            keyboardType: TextInputType.number,
                            controller: phoneController,
                            focusNode: phoneFocusNode,
                            prefixIcon: CustomExtendedImage(
                              height: 14.h,
                              imageUrl: AssetsPath.phoneIcon,
                            ),
                            sufixIcon: SizedBox(),
                            validatorText: state.isPhoneFieldEmpty,
                            callbackAction: () {
                              phoneFocusNode.requestFocus();
                            },
                            callbackCountryCode: () async {
                              FocusScopeNode currentFocus =
                                  FocusScope.of(context);
                              if (!currentFocus.hasPrimaryFocus) {
                                currentFocus.focusedChild?.unfocus();
                              }
                              final picked = await Const.countryPicker
                                  .showPicker(context: context);
                              context
                                  .read<SignupBloc>()
                                  .add(CountryCodeChange(picked!.dialCode));
                            },
                            onChange: (phoneNo) => context
                                .read<SignupBloc>()
                                .add(PhoneNoChanged(phoneNo)),
                            countryCode: state.countryCode,
                          ),

                          // password text from field....
                          CustomTextFormField(
                            label: AppLocalizations.of(context)!.enterPassword,
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            controller: passwordController,
                            focusNode: passwordFocusNode,
                            prefixIcon: CustomExtendedImage(
                              height: 14.h,
                              imageUrl: AssetsPath.passwordIcon,
                            ),
                            validatorText: state.isPasswordFieldEmpty,
                            callbackAction: () {
                              passwordFocusNode.requestFocus();
                            },
                            onChange: (password) => context
                                .read<SignupBloc>()
                                .add(PasswordChanged(password)),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: CustomButton(
                              title: AppLocalizations.of(context)!.signUp,
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
                                onSigninButtonPress();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 620.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.alreadyHaveAnAccount,
                            style: TextStyle(
                              fontFamily: Const.poppins,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: ThemeConfig.primaryColor,
                            ),
                          ),
                          CustomTextButton(
                            title: AppLocalizations.of(context)!.login,
                            width: 150.w,
                            height: 30.h,
                            textStyle: TextStyle(
                              fontFamily: Const.poppins,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: ThemeConfig.textColor4,
                            ),
                            onPress: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, RoutesName.login, (route) => false);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void onSigninButtonPress() {
    if (userController.text.isEmpty) {
      context.read<SignupBloc>().add(EmptyFieldName(true));
      return;
    } else {
      context.read<SignupBloc>().add(EmptyFieldName(false));
    }

    if (emailController.text.isEmpty) {
      context.read<SignupBloc>().add(EmptyFieldEmail(true));
      return;
    } else {
      context.read<SignupBloc>().add(EmptyFieldEmail(false));
    }

    if (phoneController.text.isEmpty) {
      context.read<SignupBloc>().add(EmptyFieldPhone(true));
      return;
    } else {
      context.read<SignupBloc>().add(EmptyFieldPhone(false));
    }

    if (passwordController.text.isEmpty) {
      context.read<SignupBloc>().add(EmptyFieldPassword(true));
      return;
    } else {
      context.read<SignupBloc>().add(EmptyFieldPassword(false));
    }

    if (!emailController.text.emailValidator()) {
      final snackBar = snackBars(AppLocalizations.of(context)!.enterValidEmail);
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    } else if (!phoneController.text.pinValidator()) {
      final snackBar =
          snackBars(AppLocalizations.of(context)!.enterValidPhoneNumber);
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    } else {
      // Remove TextField Focus
      FocusScopeNode currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.focusedChild?.unfocus();
      }
      context.read<SignupBloc>().add(SignupButtonPressed());
    }
  }

  SnackBar snackBars(String message) {
    return SnackBar(
      content: Text(
        message,
        style: TextStyle(
          fontFamily: Const.poppins,
          fontSize: 11.sp,
          fontWeight: FontWeight.w400,
          color: ThemeConfig.whiteColor,
        ),
      ),
      duration: const Duration(milliseconds: 500),
      action: SnackBarAction(
        label: '',
        onPressed: () {},
      ),
    );
  }
}
