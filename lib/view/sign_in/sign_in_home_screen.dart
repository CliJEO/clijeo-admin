import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/clijeo_user/clijeo_user_controller.dart';
import 'package:clijeo_public/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_public/controllers/main_app/main_app_controller.dart';
import 'package:clijeo_public/controllers/core/shared_pref/shared_pref.dart';
import 'package:clijeo_public/view/core/common_components/primary_button.dart';
import 'package:clijeo_public/view/error/widgets/custom_error_widget.dart';
import 'package:clijeo_public/view/first_login_form/first_login_form_screen.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:clijeo_public/view/core/theme/size_config.dart';
import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInHomeScreen extends StatelessWidget {
  static String id = "SignUpHomeScreen";
  const SignInHomeScreen({Key? key, this.signInError}) : super(key: key);
  final String? signInError;

  Future<void> signIn(context) async {
    ClijeoUserController userController =
        Provider.of<ClijeoUserController>(context, listen: false);
    await Provider.of<MainAppController>(context, listen: false)
        .signIn(userController);
  }

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: Column(
        children: [
          Container(
            height: sizeConfig.safeBlockSizeVertical(0.5),
            width: sizeConfig.safeBlockSizeHorizontal(1),
            color: AppTheme.primaryColor,
            child: Padding(
              padding: EdgeInsets.only(
                  left: sizeConfig.safeBlockSizeHorizontal(0.1), top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: sizeConfig.safeBlockSizeVertical(0.05),
                  ),
                  Text(
                    LocaleTextClass.getTextWithKey(context, "AppTitle"),
                    style: AppTextStyle.smallLightTitle,
                  ),
                  SizedBox(
                    height: sizeConfig.safeBlockSizeVertical(0.15),
                  ),
                  SizedBox(
                    width: sizeConfig.safeBlockSizeHorizontal(0.8),
                    child: Text(
                      LocaleTextClass.getTextWithKey(context, "AppFullTitle"),
                      style: AppTextStyle.largeLightTitle,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
              height: sizeConfig.safeBlockSizeVertical(0.5),
              width: sizeConfig.safeBlockSizeHorizontal(1),
              color: AppTheme.backgroundColor,
              child: Padding(
                padding: EdgeInsets.only(
                    left: sizeConfig.safeBlockSizeHorizontal(0.1),
                    right: sizeConfig.safeBlockSizeHorizontal(0.1)),
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: sizeConfig.safeBlockSizeVertical(0.06),
                      ),
                      Text(
                        LocaleTextClass.getTextWithKey(
                            context, "SignUpHomePageHeadingSecondParaHeading"),
                        style: AppTextStyle.regularDarkTitle,
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: sizeConfig.safeBlockSizeHorizontal(0.75),
                        child: Text(
                          LocaleTextClass.getTextWithKey(
                              context, "SignUpHomePageHeadingSecondParaBody"),
                          style: AppTextStyle.smallDarkLightBody,
                        ),
                      ),
                      SizedBox(height: sizeConfig.safeBlockSizeVertical(0.11)),
                      PrimaryButton(
                          onTap: () => signIn(context),
                          sizeConfig: sizeConfig,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/google_logo.png',
                                scale: 0.06,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                LocaleTextClass.getTextWithKey(
                                    context, "SignInHomePageButton"),
                                style: AppTextStyle.smallLightTitle,
                              )
                            ],
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      if (signInError != null)
                        CustomErrorWidget(
                            errorText: LocaleTextClass.getTextWithKey(
                                context, signInError!)),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
