
import 'package:get/get.dart';
import 'package:pokedex_app/pages/home_page.dart';
import 'package:pokedex_app/pages/splash_page.dart';

routes() => [
  GetPage(name: '/home', page: () => HomePage()),
  GetPage(name: '/welcome', page: () => SplashPage())
];