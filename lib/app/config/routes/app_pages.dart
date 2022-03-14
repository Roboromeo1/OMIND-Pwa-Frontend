import 'package:omind/app/features/dashboard/views/screens/loginPage.dart';
import 'package:omind/app/features/dashboard/views/screens/loginPage.dart';

import '../../features/dashboard/views/screens/dashboard_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

/// contains all configuration pages
class AppPages {
  /// when the app is opened, this page will be the first to be shown
  static const initial = Routes.login;

  static final routes = [
    GetPage(
      name: _Paths.dashboard,
      page: () => const DashboardScreen(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => LoginPage(),
      binding: DashboardBinding(),
    ),
  ];
}
