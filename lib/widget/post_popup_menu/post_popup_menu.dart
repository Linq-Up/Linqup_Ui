import 'package:flutter/material.dart';

import '../text/name.dart';

class PostpopUpMenu extends StatefulWidget {
  const PostpopUpMenu({
    required this.selectedItem,
    required this.buttonList,
    required this.verticalPadding,
    required this.horizontalPadding,
    this.borderBox,
    super.key,
  });

  final String selectedItem;
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
  String? _localSelectedItem;

  @override
  void initState() {
    super.initState();
    _localSelectedItem = widget.selectedItem;
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        border: widget.borderBox ??
            Border.all(
              color: Colors.transparent,
              width: 1,
            ),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: widget.horizontalPadding,
          vertical: widget.verticalPadding),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          dropdownColor: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(20),
          menuWidth: MediaQuery.of(context).size.width * 0.3,
          value: _localSelectedItem!,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
          icon: Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Theme.of(context).colorScheme.outline,
          ),
          elevation: 16,
          onChanged: (String? newValue) {
            setState(() {
              _localSelectedItem = newValue!;
            });
          },
          items: widget.buttonList.map<DropdownMenuItem<String>>((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Name(text: item),
            );
          }).toList(),
        ),
      ),
    );
  }
}
