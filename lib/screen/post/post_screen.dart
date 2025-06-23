import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/custom_input/custom_input_wrapper.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/post_popup_menu/post_popup_menu.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

import '../../widget/button/custom_button.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PostScreenState();
  }
}

class _PostScreenState extends State<PostScreen> {
  List<String> buttonList = ['Profile', 'Settings', 'Logout'];
  var selectedItem = 'Profile';

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        actions: [
          PopupMenuButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Theme.of(context).colorScheme.onPrimary,
            onSelected: (value) {
              if (value == 'publish') {}
              if (value == 'drafts') {}
              if (value == 'posts') {}
            },
            icon: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: CustomButton(
                customPaddingHorizontal: 10.0,
                customPaddingVertical: 10.0,
                customBorderRadius: 100,
                imageIcon: 'assets/png/switch.png',
                bgHeight: 20,
                bgWidth: 20,
                borderColor: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            itemBuilder: (ctx) => [
              const PopupMenuItem(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.close),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'publish',
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Theme.of(context)
                            .colorScheme
                            .outline
                            .withOpacity(0.4),
                      ),
                    ),
                  ),
                  width: 200,
                  child: const Name(text: 'Publish Post'),
                ),
              ),
              PopupMenuItem(
                value: 'drafts',
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Theme.of(context)
                            .colorScheme
                            .outline
                            .withOpacity(0.4),
                      ),
                    ),
                  ),
                  width: 200,
                  child: const Name(text: 'Save as Drafts'),
                ),
              ),
              PopupMenuItem(
                value: 'posts',
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Theme.of(context)
                            .colorScheme
                            .outline
                            .withOpacity(0.4),
                      ),
                    ),
                  ),
                  width: 200,
                  child: const Name(text: 'My Posts'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        color: Theme.of(context).colorScheme.onPrimary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  CustomInputWrapper(
                    hintText: "What's on your mind?",
                    topRightRadius: const Radius.circular(50),
                    topLeftRadius: const Radius.circular(50),
                    bottomRightRadius: const Radius.circular(50),
                    bottomLeftRadius: const Radius.circular(50),
                    containerWidth: MediaQuery.of(context).size.width * 0.8,
                  ),
                  const Spacer(),
                  InkWell(onTap: () {}, child: const Icon(Icons.send))
                ],
              ),
            ),
            Gap(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SizedBox(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.emoji_emotions_outlined),
                    Gap(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    const Icon(Icons.attach_file),
                    Gap(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    PostpopUpMenu(
                        horizontalPadding: 10,
                        verticalPadding: 10,
                        selectedItem: selectedItem,
                        buttonList: buttonList),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
