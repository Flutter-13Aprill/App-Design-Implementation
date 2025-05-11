import 'package:flutter/material.dart';

class BuildListTile extends StatelessWidget {
  /// ListTile widget to display the title and trailing icon
  final String titleText;
  const BuildListTile({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(titleText),
      trailing: Icon(Icons.arrow_forward_ios_rounded),
    );
  }
}
