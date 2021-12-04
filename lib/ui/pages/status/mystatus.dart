import 'package:broadcast_movie/models/chatUserModel.dart';
import 'package:broadcast_movie/providers/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../chat/widgets/conversionList.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Tim Burton",
        messageText: "Watching Encanto",
        imageURL: "https://randomuser.me/api/portraits/men/10.jpg",
        time: "Now"),
    ChatUsers(
        name: "Edwin Reds",
        messageText: "James Bond!! the Best",
        imageURL: "https://randomuser.me/api/portraits/men/11.jpg",
        time: "35 min"),
    ChatUsers(
        name: "James Green",
        messageText: "Boring...",
        imageURL: "https://randomuser.me/api/portraits/men/12.jpg",
        time: "1 h"),
    ChatUsers(
        name: "Philip Fox",
        messageText: "I love Colombia",
        imageURL: "https://randomuser.me/api/portraits/men/13.jpg",
        time: "3 h"),
    ChatUsers(
        name: "Debra Hawkins",
        messageText: "Thankyou, It's awesome",
        imageURL: "https://randomuser.me/api/portraits/men/14.jpg",
        time: "23 Nov"),
    ChatUsers(
        name: "Jacob Pena",
        messageText: "will update you in evening",
        imageURL: "https://randomuser.me/api/portraits/men/15.jpg",
        time: "17 Nov"),
    ChatUsers(
        name: "Andres ",
        messageText: "Can you please share the file?",
        imageURL: "https://randomuser.me/api/portraits/men/16.jpg",
        time: "1 Nov"),
    ChatUsers(
        name: "Jhon Jairo Perez",
        messageText: "Ja ja ja ja viendo el águila descalza",
        imageURL: "https://randomuser.me/api/portraits/men/17.jpg",
        time: "18 Feb"),
    ChatUsers(
        name: "Tim Burton",
        messageText: "Watching Coco",
        imageURL: "https://randomuser.me/api/portraits/men/10.jpg",
        time: "1 Ene"),
  ];

  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: currentTheme.isDarkTheme()
          ? const Color(0XFF262D31)
          : const Color(0XFFF8F9FA),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Status",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: currentTheme.isDarkTheme()
                              ? const Color(0xffFFFFFF)
                              : const Color(0xff262D31)),
                    ),

                    /*Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: currentTheme.isDarkTheme()
                            ? const Color(0xff085373)
                            : const Color(0xff711A1A),
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "My state",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    )*/
                  ],
                ),
              ),
            ),
            /*Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Text(
                "Add my status",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: currentTheme.isDarkTheme()
                        ? const Color(0xffFFFFFF)
                        : const Color(0xff262D31)),
              ),
            ),*/
            
            Align(
              //alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                height: 60,
                width: double.infinity,
                color: currentTheme.isDarkTheme()
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
                          color: currentTheme.isDarkTheme()
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
                                color: currentTheme.isDarkTheme()
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
                      backgroundColor: currentTheme.isDarkTheme()
                          ? const Color(0xff085373)
                          : const Color(0xff711A1A),
                      elevation: 0,
                    ),
                  ],
                ),
              ),
            ),
            /*Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Add status",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.add,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),*/
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Text(
                "Recientes",
                style: TextStyle(
                    fontSize: 15,
                    color: currentTheme.isDarkTheme()
                        ? const Color(0xffFFFFFF)
                        : const Color(0xff262D31)),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}