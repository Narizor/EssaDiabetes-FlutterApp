import 'package:first_app_flutter/view/login.view.dart';
import 'package:flutter/material.dart';
import 'package:first_app_flutter/Routes/routes.dart';
import 'package:first_app_flutter/view/home.view.dart';

abstract class Pages {
  static Map<String, Widget Function(BuildContext)> route = {
    Routes.Loginpage: (BuildContext context) => const LoginView(),
    Routes.Homepage: (BuildContext context) => const HomeView(),
  };
}
