import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/header/header.dart';
import 'package:linqup_mobile_application/component/wrapper/wrapper_container.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(context) {
    return const WrapperContainer(
      header: Header(showLeading: false),
      child: Text('Add Page'),
    );
  }
}
