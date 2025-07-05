import 'dart:io';

import 'package:flutter/material.dart';

class DismissImage extends StatefulWidget {
  const DismissImage({required this.image, super.key});

  final File? image;

  @override
  State<StatefulWidget> createState() {
    return _DismissImageState();
  }
}

class _DismissImageState extends State<DismissImage> {
  File? _localImage;

  @override
  void initState() {
    super.initState();
    _localImage = widget.image;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: _localImage != null
              ? Image.file(
                  _localImage!,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                )
              : const SizedBox(),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: IconButton(
              onPressed: () {
                setState(() {
                  _localImage = null;
                });
              },
              icon: const Icon(Icons.close),
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        )
      ],
    );
  }
}
