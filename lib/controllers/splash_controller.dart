import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print('splash controller here');
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    Future.delayed(Duration(milliseconds: 4000), (){
      Get.offNamed('/home');
    });
  }


}