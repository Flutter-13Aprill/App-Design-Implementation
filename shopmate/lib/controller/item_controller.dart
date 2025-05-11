import 'package:flutter/material.dart';
import 'package:shopmate/model/item.dart';

class ItemController {
  List<Item> item = [];

  /// This method should return an Icon widget to display the checkbox state
  itemCheck(int index) {
    return item[index].isChecked
        ? Icon(Icons.check_box)
        : Icon(Icons.check_box_outline_blank);
  }

  /// This method should return a color to indicate whether the item is checked
  Color changeColor(context, int index) {
    return item[index].isChecked
        ? Colors.grey
        : Theme.of(context).colorScheme.tertiary;
  }

  /// This method should return the appropriate text widget with a line-through if checked
  changeText(int index) {
    return item[index].isChecked
        ? Text(
          item[index].name,
          style: TextStyle(decoration: TextDecoration.lineThrough),
        )
        : Text(item[index].name);
  }

  /// Toggles the checked state
  void toggleCheck(int index) {
    item[index].isChecked = !item[index].isChecked;
  }

  /// Adds a new item to the list
  void addList(String name) {
    item.add(Item(name: name));
  }

  /// Removes an item from the list
  void removeList(int index) {
    item.removeAt(index);
  }
}
