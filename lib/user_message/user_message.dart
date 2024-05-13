import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfilio/controllers/textmessage_controller.dart';
import 'package:my_portfilio/widgets/custom_textfield.dart';
import '../widgets/custom_richText.dart';

class UserMessage extends StatelessWidget {
  UserMessage({super.key});

  final TextEditingController messagecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController namecontroller = TextEditingController();

  final controller = Get.put(Message_Controller());

  final emailformkey = GlobalKey<FormState>();
  final nameformkey = GlobalKey<FormState>();
  final messageformkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return LayoutBuilder(builder: (context, constants) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRichText("Send a Message", " "),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Form(
                key: nameformkey,
                child: Custom_TextField(
                  hinttext: "Name..",
                  controller: namecontroller,
                  line: 1,
                  onchanged: (name) {
                    controller.name.value = name;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "write something....";
                    }
                    return null;
                  },
                ),
              ),
              Form(
                key: emailformkey,
                child: Custom_TextField(
                  controller: emailcontroller,
                  hinttext: "Email..",
                  line: 1,
                  onchanged: (email) {
                    controller.email.value = email;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "write something....";
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
          Form(
            key: messageformkey,
            child: Custom_TextField(
              controller: messagecontroller,
              hinttext: "Message..",
              line: 5,
              onchanged: (message) {
                controller.message.value = message;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return "write something....";
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 12),
          InkWell(
            onTap: () {
              if (messagecontroller.text.isNotEmpty ||
                  emailcontroller.text.isNotEmpty ||
                  namecontroller.text.isNotEmpty ||
                  emailformkey.currentState!.validate() ||
                  nameformkey.currentState!.validate() ||
                  messageformkey.currentState!.validate()) {
                controller.SendMessage();
                messagecontroller.clear();
                emailcontroller.clear();
                namecontroller.clear();
              }
            },
            child: Container(
              height: 60,
              width: 150,
              margin: const EdgeInsets.only(right: 100, left: 5),
              alignment: Alignment.center,
              decoration: const BoxDecoration(color: Colors.green),
              child: const Text(
                "SEND MESSAGE",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          )
        ],
      );
    });
  }
}
