import 'package:flutter/material.dart';

import '../text/name.dart';

class PostpopUpMenu extends StatefulWidget {
  PostpopUpMenu({
    required this.selectedItem,
    required this.buttonList,
    required this.verticalPadding,
    required this.horizontalPadding,
    this.borderBox,
    super.key,
  });

  String selectedItem;
  final List<String> buttonList;
  final double horizontalPadding;
  final double verticalPadding;
  final BoxBorder? borderBox;

  @override
  State<StatefulWidget> createState() {
    return _PostpopUpMenuState();
  }
}

class _PostpopUpMenuState extends State<PostpopUpMenu> {
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        border: widget.borderBox ?? Border.all(
          color: Theme.of(context).colorScheme.outline,
          width: 0,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: widget.horizontalPadding,
          vertical: widget.verticalPadding),
      child: DropdownButton<String>(
        dropdownColor: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(20),
        menuWidth: 300,
        value: widget.selectedItem,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
        icon: const Icon(
          Icons.keyboard_arrow_down_outlined,
          color: Colors.grey,
        ),
        elevation: 16,
        onChanged: (String? newValue) {
          setState(() {
            widget.selectedItem = newValue!;
          });
        },
        items: widget.buttonList.map<DropdownMenuItem<String>>((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Name(text: item),
          );
        }).toList(),
      ),
    );
  }
}
