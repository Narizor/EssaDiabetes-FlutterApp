import 'package:first_app_flutter/view/foodForm.view.dart';
import 'package:first_app_flutter/view/login.view.dart';
import 'package:first_app_flutter/view/preSettings.view.dart';
import 'package:first_app_flutter/view/preSettings2.view.dart';
import 'package:first_app_flutter/view/userProfile.view.dart';
import 'package:flutter/material.dart';
import 'package:first_app_flutter/Routes/routes.dart';
import 'package:first_app_flutter/view/home.view.dart';

abstract class Pages {
  static Map<String, Widget Function(BuildContext)> route = {
    Routes.Loginpage: (BuildContext context) => const LoginView(),
    Routes.Homepage: (BuildContext context) => const HomeView(),
    Routes.PresettingPage: (BuildContext context) => const PreSettingsView(),
    Routes.Presetting2Page: (BuildContext context) => const PreSettings2View(),
    Routes.UserProfilePage: (BuildContext context) => const UserProfileView(),
    Routes.FoodFormPage: (BuildContext context) => const FoodForm(),
  };
}
