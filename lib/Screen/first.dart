import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:revisetapi/Controller/controller.dart';

class FirstApi extends StatefulWidget {
  const FirstApi({Key? key}) : super(key: key);

  @override
  State<FirstApi> createState() => _FirstApiState();
}

class _FirstApiState extends State<FirstApi> {
  AppController appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: appController.getUserApi(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: appController.data.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          children: [
                            Reusable(
                              title: "userId",
                              value: appController.data[index]["userId"].toString(),
                            ),
                            Reusable(
                              title: "id",
                              value: appController.data[index]["id"].toString(),
                            ),
                            Reusable(
                              title: "title",
                              value: appController.data[index]["title"].toString(),
                            ),
                            Reusable(
                              title: "body",
                              value: appController.data[index]["body"].toString(),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}

class Reusable extends StatelessWidget {
  final String title;
  final String value;
  const Reusable({Key? key, required this.title, required this.value})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20), // Adjust padding as needed
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Text(
              value,
            ),
          ),
        ],
      ),
    );
  }
}

