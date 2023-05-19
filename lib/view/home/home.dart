import 'package:clijeo_admin/controllers/clijeo_user/clijeo_user_controller.dart';
import 'package:clijeo_admin/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_admin/view/home/components/no_active_query_widget.dart';
import 'package:clijeo_admin/view/home/components/query_cards.dart';
import 'package:clijeo_admin/view/error/query_thread_error_screen.dart';
import 'package:clijeo_admin/view/loading/loading.dart';
import 'package:clijeo_admin/view/settings/settings_main_screen.dart';
import 'package:clijeo_admin/view/core/theme/app_color.dart';
import 'package:clijeo_admin/view/core/theme/app_text_style.dart';
import 'package:clijeo_admin/view/core/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static String id = "HomeScreen";
  const HomeScreen({super.key});

  Future<void> _refresh(ClijeoUserController userController) async {
    await userController.refreshUser();
  }

  String _preprocessString(String str) {
    if (str.split(" ").first.length > 10) {
      return "${str.split(" ").first.substring(0, 10)}..";
    }
    return str.split(" ").first;
  }

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    return Consumer<ClijeoUserController>(
        builder: (context, userController, _) => userController.state.when(
            noUser: () => QueryThreadErrorScreen(),
            loading: () => Loading(),
            stable: (user, refreshError) => DefaultTabController(
                  length: 2,
                  child: Scaffold(
                    backgroundColor: AppTheme.backgroundColor,
                    body: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 60, 15, 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      LocaleTextClass.getTextWithKey(
                                          context, "Hello"),
                                      style: AppTextStyle.regularDarkTitle,
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      _preprocessString(user.name),
                                      style: AppTextStyle.regularAccentTitle,
                                    )
                                  ],
                                ),
                                GestureDetector(
                                    onTap: () => Navigator.pushNamed(
                                        context, SettingsMainScreen.id),
                                    child: const SizedBox(
                                      width: 40,
                                      child: Icon(Icons.settings,
                                          color: AppTheme.textDark, size: 25),
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            TabBar(
                                labelStyle: AppTextStyle.smallDarkTitle,
                                labelColor: AppTheme.textDark,
                                unselectedLabelStyle:
                                    AppTextStyle.smallDarkLightTitle,
                                unselectedLabelColor: AppTheme.textDarkLight,
                                indicatorColor: AppTheme.primaryColor,
                                tabs: [
                                  Tab(
                                    text: LocaleTextClass.getTextWithKey(
                                        context, "ActiveQueries"),
                                  ),
                                  Tab(
                                    text: LocaleTextClass.getTextWithKey(
                                        context, "ArchivedQueries"),
                                  )
                                ]),
                            Expanded(
                              child: TabBarView(children: [
                                RefreshIndicator(
                                  backgroundColor: AppTheme.backgroundColor,
                                  color: AppTheme.primaryColor,
                                  strokeWidth: 3,
                                  triggerMode:
                                      RefreshIndicatorTriggerMode.onEdge,
                                  onRefresh: () => _refresh(userController),
                                  child: SingleChildScrollView(
                                    physics: const BouncingScrollPhysics(),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Column(
                                        children: [
                                          if (user.activeQueries.isEmpty)
                                            Center(
                                                child: NoActiveQueryWidget(
                                                    sizeConfig: sizeConfig)),
                                          if (user.activeQueries.isNotEmpty)
                                            ListView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount:
                                                  user.activeQueries.length,
                                              itemBuilder: (context, index) {
                                                final query =
                                                    user.activeQueries[index];
                                                return QueryCard(
                                                  queryId: query.id,
                                                  title: query.title,
                                                  isArchived: false,
                                                  sizeConfig: sizeConfig,
                                                );
                                              },
                                            )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SingleChildScrollView(
                                  physics: const BouncingScrollPhysics(),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Column(
                                      children: [
                                        if (user.archivedQueries.isEmpty)
                                          Center(
                                              child: NoActiveQueryWidget(
                                                  sizeConfig: sizeConfig)),
                                        if (user.archivedQueries.isNotEmpty)
                                          ListView.builder(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount:
                                                user.archivedQueries.length,
                                            itemBuilder: (context, index) {
                                              final query =
                                                  user.archivedQueries[index];
                                              return QueryCard(
                                                queryId: query.id,
                                                title: query.title,
                                                isArchived: true,
                                                sizeConfig: sizeConfig,
                                              );
                                            },
                                          )
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            ),
                          ]),
                    ),
                  ),
                )));
  }
}
