import 'package:broadcast_movie/controllers/statusUserController.dart';
import 'package:broadcast_movie/controllers/theme_controller.dart';
import 'package:broadcast_movie/data/models/statusUserModel.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../chat/widgets/conversionList.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  dataStatusUserTemp List_status = Get.find();

  @override
  Widget build(BuildContext context) {
    final ThemeController controller = Get.find();

    return Scaffold(
      backgroundColor: controller.darkMode
          ? const Color(0XFF262D31)
          : const Color(0XFFF8F9FA),
      appBar: AppBar(
        backgroundColor: controller.darkMode
            ? const Color(0xff085373)
            : const Color(0xff711A1A),
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  'Estados',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xffFFFFFF)),
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              child: Container(
                padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                height: 60,
                width: double.infinity,
                color: controller.darkMode
                    ? const Color(0xff131C21)
                    : const Color(0xffEDEDED),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: controller.darkMode
                              ? const Color(0xff085373)
                              : const Color(0xff711A1A),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        /*child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),*/
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Change my status...",
                            hintStyle: TextStyle(
                                color: controller.darkMode
                                    ? const Color(0xffFFFFFF)
                                    : const Color(0xff262D31)),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 18,
                      ),
                      backgroundColor: controller.darkMode
                          ? const Color(0xff085373)
                          : const Color(0xff711A1A),
                      elevation: 0,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Text(
                "Recientes",
                style: TextStyle(
                    fontSize: 15,
                    color: controller.darkMode
                        ? const Color(0xffFFFFFF)
                        : const Color(0xff262D31)),
              ),
            ),
            Obx(
              () => ListView.builder(
                itemCount: List_status.statusUser.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 16),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ConversationList(
                    name: List_status.statusUser[index].name,
                    messageText: List_status.statusUser[index].messageText,
                    imageUrl: List_status.statusUser[index].imageURL,
                    time: List_status.statusUser[index].time,
                    isMessageRead: (index == 0 || index == 3) ? true : false,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}