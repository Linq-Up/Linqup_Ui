import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/gap/gap.dart';
import 'package:linqup_mobile_application/component/status_wrapper/status_wrapper.dart';
import 'package:linqup_mobile_application/component/text/name.dart';

class MessageCard extends StatefulWidget {
  final void Function()? onTap;
  final String userImage;
  final String userName;
  final String message;
  final String time;
  final Color online;
  const MessageCard(
      {required this.userName,
      required this.message,
      required this.userImage,
      required this.time,
      required this.online,
      required this.onTap,
      super.key});

  @override
  State<MessageCard> createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  @override
  Widget build(context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.only(bottom: 20, top: 20, right: 10, left: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black.withOpacity(0.2),
              width: 1,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            StatusWrapper(
              userImage: Image.asset(
                widget.userImage,
                width: 55,
                height: 55,
                fit: BoxFit.cover,
              ),
            ),
            const Gap(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Name(
                    text: widget.userName,
                    textColor: Colors.black,
                    textSize: 16,
                    textWeight: FontWeight.bold,
                  ),
                  const Gap(height: 5),
                  SizedBox(
                    width: 300,
                    child: Name(
                      text: widget.message,
                      maxLines: 1,
                      textColor: Colors.black,
                      textSize: 16,
                      textWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(width: 10),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: widget.online,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                const Gap(height: 10),
                Name(
                    text: widget.time,
                    textColor: Colors.grey.shade500,
                    textSize: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
