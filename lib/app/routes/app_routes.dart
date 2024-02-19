import 'package:app_base/app/page/default_page.dart';
import 'package:app_base/app/page/error_page.dart';
import 'package:app_base/app/page/loading_page.dart';
import 'package:app_base/app/page/welcome_page.dart';
import 'package:app_base/app/utilities/page_buider.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  AppRoutes._();
  static const defaultPage = '/';
  static const errorPage = '/error';
  static const loadingPage = '/loading';
  static const loginPage = '/login';
  static const mainPage = '/main';
  static const registerPage = '/register';
  static const splashPage = '/splash';
  static const welcomePage = '/welcome';

  static Route<dynamic> generateAppRoute(RouteSettings settings) {
    Widget page = DefaultPage();
    //trả về các màn hình dựa trên routersett
    switch (settings.name) {
      case errorPage:
        page = const ErrorPage();
        break;
      //xác đing giá trị setting / tên màn hình muốn xây dựng

      case loadingPage:
        page = const LoadingPage();
        break;
      case welcomePage:
        page = const WelcomePage();
        break;
        
      //  return PageBuilder(const LoadingPage(), settings);
      // case loginPage:
      //   return PageBuilder(const LoginPage(), settings);
      // case mainPage:
      //   return PageBuilder(const MainPage(), settings);
      // case registerPage:
      //   return PageBuilder(const RegisterPage(), settings);
      // case splashPage:
      //   return PageBuilder(const SplashPage(), settings);

      //return PageBuilder(const WelcomePage(), settings);
      // default:
      //   return PageBuilder(const DefaultPage(), settings);
    }
     return MaterialPageBuilder(
      page,
       settings: settings); 
  }
}
