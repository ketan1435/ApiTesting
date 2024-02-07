import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:revisetapi/Controller/controller.dart';
import 'package:revisetapi/Utils/textstyle.dart';
class SecondApi extends StatefulWidget {
  const SecondApi({super.key});

  @override
  State<SecondApi> createState() => _SecondApiState();
}

class _SecondApiState extends State<SecondApi> {
  AppController1 appController1 = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Expanded(
           child: FutureBuilder(
               future: appController1.getUserApi1(), 
               builder:(context , snapshot)
               {
                 if(snapshot.connectionState == ConnectionState.waiting)
                   {
                     return Center(
                         child: CircularProgressIndicator());
                   }
                 else
                   {
                     return ListView.builder(
                       shrinkWrap: true,
                         itemCount:appController1.data.length ,
                         itemBuilder:(context , index)
                             {
                               return Column(
                                 children: [
                                 ReUsableRow(
                                     title: "PostId",
                                     value: appController1.data[index]["postId"].toString()
                                 ),
                                   ReUsableRow(
                                       title: "ID",
                                       value: appController1.data[index]["id"].toString()
                                   ),
                                   ReUsableRow(
                                       title: "Name",
                                       value: appController1.data[index]["name"].toString()
                                   ),
                                   ReUsableRow(
                                       title: "Email",
                                       value: appController1.data[index]["email"].toString()
                                   ),
                                   ReUsableRow(
                                       title: "Body",
                                       value: appController1.data[index]["body"].toString()
                                   ),
                                 ],
                               );
                             }
                     );
                   }
               }
           ),
         )
        ],
      ),
    );
  }
}
class ReUsableRow extends StatelessWidget {
  final String title;
  final String value;
  ReUsableRow({super.key, required this.title, required this.value});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
              child: Text(title,style: TextHelper.h5,)),
          Expanded(
              child: Text(value,style: TextHelper.h7,))
        ],
      ),
    );
  }
}
