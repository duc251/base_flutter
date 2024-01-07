import 'package:flutter/material.dart';

class AppRoutes {
  static const defaultPage = '/';
  static const errorPage = '/error';
  static const loadingPage = '/loading';
  static const loginPage = '/login';
  static const mainPage = '/main';
  static const registerPage = '/register';
  static const splashPage = '/splash';
  static const welcomePage = '/welcome';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    //trả về các màn hình dựa trên routersett
    switch (settings.name) {
      //xác đing giá trị setting / tên màn hình muốn xây dựng
      case errorPage:
        return PageBuilder(const ErrorPage(), settings);
      // case loadingPage:
      //   return PageBuilder(const LoadingPage(), settings);
      // case loginPage:
      //   return PageBuilder(const LoginPage(), settings);
      // case mainPage:
      //   return PageBuilder(const MainPage(), settings);
      // case registerPage:
      //   return PageBuilder(const RegisterPage(), settings);
      // case splashPage:
      //   return PageBuilder(const SplashPage(), settings);
      // case welcomePage:
      //   return PageBuilder(const WelcomePage(), settings);
      // default:
      //   return PageBuilder(const DefaultPage(), settings);
    }
  }
}
