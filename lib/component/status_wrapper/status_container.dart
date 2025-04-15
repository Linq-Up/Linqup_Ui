import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/status_wrapper/status_wrapper.dart';

class StatusContainer extends StatelessWidget {
  const StatusContainer({super.key});

  final imagePath = 'assets/jpg/profile.jpeg';
  final addStory = 'assets/png/plus.png';

  @override
  Widget build(context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: StatusWrapper(
              name: 'My Story',
              plusIcon: addStory,
              userImage: Image.asset(
                imagePath,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 100,
            child: StatusWrapper(
              name: 'Selena',
              borderColor: Colors.purple.withOpacity(0.5),
              userImage: Image.asset(
                imagePath,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 100,
            child: StatusWrapper(
              name: 'Clara',
              borderColor: Colors.purple.withOpacity(0.5),
              userImage: Image.asset(
                imagePath,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 100,
            child: StatusWrapper(
              name: 'Clara',
              borderColor: Colors.purple.withOpacity(0.5),
              userImage: Image.asset(
                imagePath,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
