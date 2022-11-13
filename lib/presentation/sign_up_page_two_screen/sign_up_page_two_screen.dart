import 'controller/sign_up_page_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:ian_kwe_mboya_s_application4/core/app_export.dart';
import 'package:ian_kwe_mboya_s_application4/core/utils/validation_functions.dart';
import 'package:ian_kwe_mboya_s_application4/widgets/custom_button.dart';
import 'package:ian_kwe_mboya_s_application4/widgets/custom_text_form_field.dart';
import 'package:ian_kwe_mboya_s_application4/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignUpPageTwoScreen extends GetWidget<SignUpPageTwoController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 32, top: 107, right: 32),
                                      child: Text("lbl_sign_up".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtPoppinsRegular19))),
                              CustomTextFormField(
                                  width: 390,
                                  focusNode: FocusNode(),
                                  controller: controller.textboxController,
                                  hintText: "lbl_password".tr,
                                  margin:
                                      getMargin(left: 20, top: 43, right: 20),
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              CustomTextFormField(
                                  width: 390,
                                  focusNode: FocusNode(),
                                  controller: controller.textboxOneController,
                                  hintText: "msg_confirm_passwor".tr,
                                  margin:
                                      getMargin(left: 20, top: 82, right: 20),
                                  padding: TextFormFieldPadding.PaddingAll15,
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              CustomButton(
                                  width: 390,
                                  text: "lbl_sign_up".tr,
                                  margin:
                                      getMargin(left: 20, top: 80, right: 20),
                                  padding: ButtonPadding.PaddingAll15,
                                  onTap: onTapSignupOne,
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 20, top: 58, right: 20),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width:
                                                    getHorizontalSize(153.00),
                                                margin: getMargin(
                                                    top: 9, bottom: 8),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .black900)),
                                            Text("lbl_or".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular19),
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width:
                                                    getHorizontalSize(153.00),
                                                margin: getMargin(
                                                    top: 9, bottom: 8),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.black900))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapRowgoogle();
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 20, top: 49, right: 20),
                                          decoration: AppDecoration
                                              .outlineBlue500
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder15),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        left: 44,
                                                        top: 17,
                                                        bottom: 19),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgGoogle,
                                                        height: getVerticalSize(
                                                            33.00),
                                                        width:
                                                            getHorizontalSize(
                                                                35.00))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 24,
                                                        top: 23,
                                                        bottom: 25),
                                                    child: Text(
                                                        "msg_sign_up_with_go"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular19))
                                              ])))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      margin: getMargin(
                                          left: 20,
                                          top: 48,
                                          right: 20,
                                          bottom: 5),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "msg_not_registered3".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontSize: getFontSize(15),
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            TextSpan(
                                                text: "lbl_create_account".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.lime800,
                                                    fontSize: getFontSize(15),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0.75))
                                          ]),
                                          textAlign: TextAlign.left)))
                            ]))))));
  }

  onTapSignupOne() {
    Get.toNamed(AppRoutes.welcomePageScreen);
  }

  onTapRowgoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
