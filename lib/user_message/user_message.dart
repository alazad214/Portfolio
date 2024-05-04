import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfilio/controllers/textmessage_controller.dart';
import 'package:my_portfilio/user_message/user_contact.dart';

class User_Message extends StatelessWidget {
  User_Message({super.key});

  final controller = Get.put(TextMessageController());
  final TextEditingController messagecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("Send Message"),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        children: [
          UserContact(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: TextField(
              controller: emailcontroller,
              maxLines: 1,
              onChanged: (emeil) {
                controller.email.value = emeil;
              },
              decoration: InputDecoration(
                hintText: "write your email",
                filled: true,

                fillColor: Colors.white,
                //enable-->
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: BorderSide.none),

                //focus-->
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Colors
                          .black), // Set border color when the field is focused
                  borderRadius: BorderRadius.circular(14.0),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: TextField(
              controller: messagecontroller,
              maxLines: 10,
              onChanged: (sendmessage) {
                controller.sendMessage.value = sendmessage;
              },
              decoration: InputDecoration(
                hintText: "write message...",
                filled: true,
                fillColor: Colors.white,
                //enable-->
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: BorderSide.none),

                //focus-->
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Colors
                          .black), // Set border color when the field is focused
                  borderRadius: BorderRadius.circular(14.0),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (emailcontroller.text.isNotEmpty &&
                  messagecontroller.text.isNotEmpty) {
                controller.SendMessage();
                emailcontroller.clear();
                messagecontroller.clear();
              }
            },
            child: Container(
              alignment: Alignment.center,
              height: 55,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15)),
              child: const Text("Send Message"),
            ),
          )
        ],
      ),
    );
  }
}
