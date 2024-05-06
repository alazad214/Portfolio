import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfilio/controllers/textmessage_controller.dart';
import 'package:my_portfilio/user_message/message_desktop.dart';
import 'package:my_portfilio/user_message/user_contact.dart';
import 'package:my_portfilio/widgets/custom_textfield.dart';

import 'message_mobile.dart';

class UserMessage extends StatelessWidget {
  UserMessage({super.key});

  final controller = Get.put(Message_Controller());
  final TextEditingController messagecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return LayoutBuilder(builder: (context, constants) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Contact Me",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          backgroundColor: Colors.white,
          titleSpacing: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/image/contact.png",
                height: h / 2,
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Ask how we can help you-",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              if (constants.maxWidth >= 550)
                const MessageDesktop()
              else
                const messageMobile(),
              const SizedBox(height: 20),
              const UserContact(),
              const SizedBox(height: 20),
              const Text(
                "Developed with Flutter-Web",
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
