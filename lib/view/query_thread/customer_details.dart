import 'package:clijeo_admin/controllers/clijeo_user/clijeo_user_controller.dart';
import 'package:clijeo_admin/controllers/core/language/language_controller.dart';
import 'package:clijeo_admin/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_admin/controllers/main_app/main_app_controller.dart';
import 'package:clijeo_admin/models/customer/clijeo_customer.dart';
import 'package:clijeo_admin/models/user/clijeo_user.dart';
import 'package:clijeo_admin/view/core/common_components/custom_back_button.dart';
import 'package:clijeo_admin/view/core/common_components/disabled_form_field.dart';
import 'package:clijeo_admin/view/core/common_components/disabled_toggle_button.dart';
import 'package:clijeo_admin/view/core/common_components/primary_button.dart';
import 'package:clijeo_admin/view/error/query_thread_error_screen.dart';
import 'package:clijeo_admin/view/loading/loading.dart';
import 'package:clijeo_admin/view/settings/settings_edit_screen.dart';
import 'package:clijeo_admin/view/core/theme/app_color.dart';
import 'package:clijeo_admin/view/core/theme/app_text_style.dart';
import 'package:clijeo_admin/view/core/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomerDetailsScreen extends StatelessWidget {
  static String id = "CustomerDetailsScreen";
  const CustomerDetailsScreen({super.key});

  String _outputFormatting(Object? obj) {
    if (obj == null) {
      return "";
    } else {
      return obj.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    final customer =
        ModalRoute.of(context)!.settings.arguments as ClijeoCustomer;
    return Scaffold(
        backgroundColor: AppTheme.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CustomBackButton(),
                  Text(
                    LocaleTextClass.getTextWithKey(context, "UserDetails"),
                    style: AppTextStyle.regularDarkTitle,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DisabledFormField(
                          fieldTitle:
                              LocaleTextClass.getTextWithKey(context, "Name"),
                          fieldValue: customer.name),
                      const SizedBox(
                        height: 20,
                      ),
                      DisabledFormField(
                          fieldTitle:
                              LocaleTextClass.getTextWithKey(context, "Age"),
                          fieldValue: _outputFormatting(customer.age)),
                      const SizedBox(
                        height: 20,
                      ),
                      DisabledFormField(
                          fieldTitle:
                              LocaleTextClass.getTextWithKey(context, "Gender"),
                          fieldValue: _outputFormatting(customer.gender)),
                      const SizedBox(
                        height: 20,
                      ),
                      DisabledFormField(
                          fieldTitle: LocaleTextClass.getTextWithKey(
                              context, "PhoneNumber"),
                          fieldValue: _outputFormatting(customer.phoneNumber)),
                      const SizedBox(
                        height: 20,
                      ),
                      DisabledFormField(
                          fieldTitle: LocaleTextClass.getTextWithKey(
                              context, "Location"),
                          fieldValue: _outputFormatting(customer.location)),
                      const SizedBox(
                        height: 30,
                      ),
                    ]),
              ),
            ],
          )),
        ));
  }
}
