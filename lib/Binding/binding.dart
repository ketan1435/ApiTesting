
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:revisetapi/Controller/controller.dart';

class AppBinding extends Bindings
{
  @override
  void dependencies()
  {
   Get.lazyPut(() => AppController());
  }
}

class App1Binding extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut(() => AppController1());
  }
}