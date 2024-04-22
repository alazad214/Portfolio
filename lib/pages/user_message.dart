import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfilio/controllers/textmessage_controller.dart';
import 'package:my_portfilio/widgets/custom_textfield.dart';

class User_Message extends StatelessWidget {
  User_Message({super.key});

  final controller = Get.put(TextMessageController());
  final TextEditingController messagecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade400,
      appBar: AppBar(
        title: const Text("Send Message"),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Custom_TextField(
              onchanged: (email) {
                controller.email.value = email;
              },
              hinttext: "Your email",
              maxline: 1,
            ),
            Custom_TextField(
              onchanged: (sendmessage) {
                controller.sendMessage.value = sendmessage;
              },
              hinttext: "Write something...",
              maxline: 10,
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
      ),
    );
  }
}
