import 'package:minha_escola/app/modules/alter_password/views/alter_password_view.dart';
import 'package:minha_escola/app/modules/boletim/views/boletim_view.dart';
import 'package:minha_escola/app/modules/home/views/home_view.dart';
import 'package:minha_escola/app/modules/home/bindings/home_binding.dart';
import 'package:get/get.dart';
import 'package:minha_escola/app/modules/initial/views/initial_view.dart';
import 'package:minha_escola/app/modules/login/bindings/login_bind.dart';
import 'package:minha_escola/app/modules/login/views/login_view.dart';
import 'package:minha_escola/app/modules/pass_recuperation.dart/views/pass_recuperation_view.dart';
import 'package:minha_escola/app/modules/profile/bindings/profile_bind.dart';
import 'package:minha_escola/app/modules/profile/views/profile_view.dart';
part 'app_routes.dart';

class AppPages {
  
static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: Routes.HOME, 
      page:()=> HomeView(), 
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.LOGIN, 
      page:()=> LoginView(), 
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.PROFILE, 
      page:()=> ProfileView(), 
      binding: ProfileBinding(),
    ),
    GetPage(
      name: Routes.INITIAL, 
      page:()=> InitialView(), 
      //binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.BOLETIM, 
      page:()=> BoletimView(), 
      //binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.ALTERPASSWORD, 
      page:()=> AlterPasswordView(), 
      //binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.PASSRECUPERATION, 
      page:()=> PassRecuperationView(), 
      //binding: HomeBinding(),
    ),
  ];
}