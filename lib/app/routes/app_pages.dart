import 'package:get/get.dart';

import 'package:dirbox/app/modules/home/bindings/home_binding.dart';
import 'package:dirbox/app/modules/home/views/home_view.dart';
import 'package:dirbox/app/modules/login/bindings/login_binding.dart';
import 'package:dirbox/app/modules/login/views/login_view.dart';
import 'package:dirbox/app/modules/profile/bindings/profile_binding.dart';
import 'package:dirbox/app/modules/profile/views/profile_view.dart';
import 'package:dirbox/app/modules/sign_in/bindings/sign_in_binding.dart';
import 'package:dirbox/app/modules/sign_in/views/sign_in_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
  ];
}
