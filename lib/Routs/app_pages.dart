

import 'package:revisetapi/Binding/binding.dart';
import 'package:revisetapi/Routs/route.dart';
import 'package:get/get.dart';
import 'package:revisetapi/Screen/first.dart';
import 'package:revisetapi/Screen/second.dart';
class AppPages
{
  static String INITIALROUTE = Routs.SECONDAPI;
  static final pages = [
    GetPage(
        name: Routs.FIRSTAPI,
        page:()=> FirstApi(),
        binding: AppBinding()
    ),
    GetPage(
        name: Routs.SECONDAPI,
        page:()=> SecondApi(),
        binding:App1Binding()
    ),
  ];

}