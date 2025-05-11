import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart';
import 'package:shopmate/controller/item_controller.dart';
import 'package:shopmate/extensions/screens/get_size_screen.dart';
import 'package:shopmate/widgets/text_field_thema.dart';

class AddItem extends StatefulWidget {
  ///Handle the "Add Item" screen and interactions
  const AddItem({super.key});
  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  final felidItem = TextEditingController();
  ItemController itemController = ItemController();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        //Container decoration
        width: double.infinity,
        height: context.getHeight() * 0.80,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,

          borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 10,
              color: Colors.grey,
              inset: true, // inner shadow
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: // build item
                    ListView.builder(
                  itemCount: itemController.item.length,
                  itemBuilder:
                      (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: itemController.changeColor(context, index),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: ListTile(
                            leading: IconButton(
                              onPressed: () {
                                itemController.toggleCheck(index);
                                setState(() {});
                              },
                              icon: itemController.itemCheck(index),
                            ),
                            title: itemController.changeText(index),

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                itemController.removeList(index);
                                setState(() {});
                              },
                              icon: Icon(Icons.delete),
                            ),
                          ),
                        ),
                      ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                //Add item
                child: FloatingActionButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Add Item'),

                          actions: <Widget>[
                            TextFieldThema(
                              textController: felidItem,
                              textHint: 'Enter the item',
                              textLabel: 'Item name',
                            ),

                            TextButton(
                              onPressed: () {
                                setState(() {
                                  itemController.addList(felidItem.text);
                                  felidItem.clear();
                                });
                                Navigator.of(context).pop();
                              },
                              child: Text('Add'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Icon(Icons.add),
                ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
