import '../views.dart';
import '../../utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:avvtar/configs/configs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:avvtar/bloc/dashboard_bloc/dashboard_bloc.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  final TextEditingController userController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController othersController = TextEditingController();

  final FocusNode userFocusNode = FocusNode();
  final FocusNode phoneFocusNode = FocusNode();
  final FocusNode addressFocusNode = FocusNode();
  final FocusNode othersFocusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
    userController.dispose();
    userFocusNode.dispose();
  }

  List<String> genderDropdownItems = ['male', 'female', 'others'];
  List<String> cityDropdownItems = ['Coventry', 'Others'];
  List<String> countryDropdownItems = ['United Kingdom', 'India'];
  List<String> cardDropdownItems = ['Master Card', 'Credit Card'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        backgroundColor: ThemeConfig.whiteColor,
        key: _key, // Assign the key to Scaffold.
        appBar: AppBar(
          elevation: 0,
          leadingWidth: 40.w,
          leading: InkWell(
            splashColor: ThemeConfig.transparent,
            highlightColor: ThemeConfig.transparent,
            hoverColor: ThemeConfig.transparent,
            focusColor: ThemeConfig.transparent,
            onTap: () {
              _key.currentState!.openDrawer();
            },
            child: Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: SvgImageWidget(
                svgPath: AssetsPath.drawer,
              ),
            ),
          ),
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context)!.editProfile,
            style: TextStyle(
              fontFamily: Const.poppins,
              fontSize: 20.sp,
              fontWeight: FontWeight.w800,
              color: ThemeConfig.primaryColor,
            ),
          ),
          actions: [
            CustomTextButton(
              padding: EdgeInsets.only(right: 15.w),
              title: AppLocalizations.of(context)!.done,
              textStyle: TextStyle(
                fontFamily: Const.poppins,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: ThemeConfig.redClr1,
              ),
              onPress: () {},
            ),
          ],
          foregroundColor: ThemeConfig.whiteColor,
          backgroundColor: ThemeConfig.whiteColor,
        ),
        drawer: DrawerWidget(),
        body: BlocBuilder<DashboardBloc, DashboardState>(
          builder: (context, state) {
            return SizedBox(
              width: ScreenUtil().screenWidth,
              height: ScreenUtil().screenHeight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: SingleChildScrollView(
                  child: Column(
                    spacing: 13.h,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 100.h),
                      Container(
                        height: 120.w,
                        width: 120.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150),
                            color: ThemeConfig.whiteColor,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 5),
                                blurRadius: 3,
                                spreadRadius: 0.5,
                                color: Color.fromRGBO(0, 0, 0, 0.125),
                              )
                            ]),
                        child: Stack(
                          children: [
                            Center(
                              child: CustomExtendedImage(
                                height: 110.w,
                                width: 110.w,
                                fit: BoxFit.fill,
                                imageUrl: AssetsPath.userImg,
                                borderRadius: BorderRadius.circular(100.w),
                              ),
                            ),
                            Positioned(
                                bottom: 6,
                                right: 6,
                                child: Container(
                                  height: 40.w,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    color: ThemeConfig.whiteColor,
                                  ),
                                  child: Icon(CupertinoIcons.camera),
                                ))
                          ],
                        ),
                      ),
                      // user name text from field....
                      CustomTextFormField(
                        label: AppLocalizations.of(context)!.johnDoe,
                        controller: userController,
                        focusNode: userFocusNode,
                        height: Const.editTextFieldHight,
                        keyboardType: TextInputType.text,
                        contentPadding: EdgeInsets.only(top: 22),
                        prefixIcon: SvgImageWidget(
                          hight: 20,
                          svgPath: AssetsPath.editPerson,
                        ),
                        callbackAction: () {
                          userFocusNode.requestFocus();
                        },
                        onChange: (text) => context
                            .read<DashboardBloc>()
                            .add(UsernameChange(text)),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: SvgImageWidget(
                            hight: 16,
                            svgPath: AssetsPath.editField,
                          ),
                        ),
                      ),
                      // phone number text from field....
                      CustomCountruCodePickerTextField(
                        label: AppLocalizations.of(context)!.phoneNo,
                        keyboardType: TextInputType.number,
                        controller: phoneController,
                        contentPadding: EdgeInsets.only(top: 22),
                        height: Const.editTextFieldHight,
                        focusNode: phoneFocusNode,
                        sufixIcon: Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: SvgImageWidget(
                            hight: 16,
                            svgPath: AssetsPath.editField,
                          ),
                        ),
                        prefixIcon: SvgImageWidget(
                          hight: 20,
                          svgPath: AssetsPath.editMobile,
                        ),
                        callbackAction: () {
                          phoneFocusNode.requestFocus();
                        },
                        callbackCountryCode: () async {
                          FocusScopeNode currentFocus = FocusScope.of(context);
                          if (!currentFocus.hasPrimaryFocus) {
                            currentFocus.focusedChild?.unfocus();
                          }
                          final picked = await Const.countryPicker
                              .showPicker(context: context);
                          context
                              .read<DashboardBloc>()
                              .add(CountryCodeChange(picked!.dialCode));
                        },
                        onChange: (phoneNo) => context
                            .read<DashboardBloc>()
                            .add(PhoneNoChanged(phoneNo)),
                        countryCode: state.countryCode,
                      ),
                      // gender dropdown field....
                      Normaldropdown(
                        dropDownBorderColor: ThemeConfig.transparent,
                        dropdownItems: genderDropdownItems,
                        selectedText:
                            state.gender.isEmpty ? null : state.gender,
                        borderWidth: 0,
                        dropDownHeight: Const.editTextFieldHight,
                        padding: EdgeInsets.all(8),
                        iconPadding: EdgeInsets.only(right: 6),
                        dropDownWidth: ScreenUtil().screenWidth,
                        dropDownBackgroundColor: ThemeConfig.textFieldBGColor,
                        onChange: (String? value) {
                          if (value != null) {
                            context
                                .read<DashboardBloc>()
                                .add(GenderChange(value));
                          }
                        },
                      ),
                      // address text from field....
                      CustomTextFormField(
                        label: AppLocalizations.of(context)!.johnDoe,
                        controller: addressController,
                        focusNode: addressFocusNode,
                        height: Const.editTextFieldHight,
                        contentPadding: EdgeInsets.only(top: 22),
                        keyboardType: TextInputType.text,
                        prefixIcon: SvgImageWidget(
                          hight: 20.h,
                          svgPath: AssetsPath.editLocation,
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: SvgImageWidget(
                            hight: 16.h,
                            svgPath: AssetsPath.editField,
                          ),
                        ),
                        callbackAction: () {
                          userFocusNode.requestFocus();
                        },
                        onChange: (text) => context
                            .read<DashboardBloc>()
                            .add(AddressChange(text)),
                      ),

                      // city dropdown field..
                      Normaldropdown(
                        dropDownBorderColor: ThemeConfig.transparent,
                        dropdownItems: cityDropdownItems,
                        widgetIcon: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: SvgImageWidget(
                            hight: 20.h,
                            svgPath: AssetsPath.editMap,
                          ),
                        ),
                        selectedText: state.city.isEmpty ? null : state.city,
                        borderWidth: 0,
                        dropDownHeight: Const.editTextFieldHight,
                        padding: EdgeInsets.all(8),
                        iconPadding: EdgeInsets.only(right: 6),
                        dropDownWidth: ScreenUtil().screenWidth,
                        dropDownBackgroundColor: ThemeConfig.textFieldBGColor,
                        onChange: (String? value) {
                          if (value != null) {
                            context
                                .read<DashboardBloc>()
                                .add(CityChange(value));
                          }
                        },
                      ),
                      // sub address text from field....
                      CustomTextFormField(
                        label: AppLocalizations.of(context)!.johnDoe,
                        controller: othersController,
                        focusNode: othersFocusNode,
                        height: Const.editTextFieldHight,
                        contentPadding: EdgeInsets.only(top: 22),
                        keyboardType: TextInputType.text,
                        prefixIcon: SvgImageWidget(
                          hight: 20.h,
                          svgPath: AssetsPath.editFile,
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: SvgImageWidget(
                            hight: 16.h,
                            svgPath: AssetsPath.editField,
                          ),
                        ),
                        callbackAction: () {
                          userFocusNode.requestFocus();
                        },
                        onChange: (text) => context
                            .read<DashboardBloc>()
                            .add(SubAddressChange(text)),
                      ),

                      // country dropdown field
                      Normaldropdown(
                        dropDownBorderColor: ThemeConfig.transparent,
                        dropdownItems: countryDropdownItems,
                        widgetIcon: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: SvgImageWidget(
                            hight: 20.h,
                            svgPath: AssetsPath.editCountry,
                          ),
                        ),
                        selectedText:
                            state.country.isEmpty ? null : state.country,
                        borderWidth: 0,
                        dropDownHeight: Const.editTextFieldHight,
                        padding: EdgeInsets.all(8),
                        iconPadding: EdgeInsets.only(right: 6),
                        dropDownWidth: ScreenUtil().screenWidth,
                        dropDownBackgroundColor: ThemeConfig.textFieldBGColor,
                        onChange: (String? value) {
                          if (value != null) {
                            context
                                .read<DashboardBloc>()
                                .add(CountryChange(value));
                          }
                        },
                      ),
                      // payment card dropdown filed
                      Normaldropdown(
                        dropDownBorderColor: ThemeConfig.transparent,
                        dropdownItems: cardDropdownItems,
                        widgetIcon: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: SvgImageWidget(
                            hight: 20.h,
                            svgPath: AssetsPath.editCard,
                          ),
                        ),
                        selectedText: state.paymentMethod.isEmpty
                            ? null
                            : state.paymentMethod,
                        borderWidth: 0,
                        dropDownHeight: Const.editTextFieldHight,
                        padding: EdgeInsets.all(8),
                        iconPadding: EdgeInsets.only(right: 6),
                        dropDownWidth: ScreenUtil().screenWidth,
                        dropDownBackgroundColor: ThemeConfig.textFieldBGColor,
                        onChange: (String? value) {
                          if (value != null) {
                            context
                                .read<DashboardBloc>()
                                .add(PaymentMethodChange(value));
                          }
                        },
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomButton(
                          title: AppLocalizations.of(context)!.updateProfile,
                          width: 180.w,
                          height: 32.h,
                          borderRadios: 100.r,
                          textStyle: TextStyle(
                            fontFamily: Const.poppins,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                            color: ThemeConfig.whiteColor,
                          ),
                          onPress: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
