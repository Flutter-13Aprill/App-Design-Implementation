import 'package:flutter/material.dart';
import 'package:shopmate/controller/list_controller.dart';
import 'package:shopmate/widgets/add_item.dart';

class AddList extends StatefulWidget {
  final ListController listController;

  const AddList({super.key, required this.listController});

  @override
  State<AddList> createState() => _AddListState();
}

class _AddListState extends State<AddList> {
  ///Adding and displaying a list of items
  @override
  Widget build(BuildContext context) {
    return
    // ListView builder to display lists
    ListView.builder(
      itemCount: widget.listController.lists.length,
      itemBuilder:
          (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                // Show modal bottom sheet when a list item is tapped
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),

                  isScrollControlled: true,
                  builder: (context) {
                    return Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Theme.of(context).colorScheme.primary,
                      child: Column(
                        children: [
                          SizedBox(height: 50),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.arrow_back_ios_new_rounded),
                                ),
                                Text(
                                  widget.listController.lists[index],
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.secondary,
                                      ),
                                      child: Icon(Icons.add),
                                    ),

                                    Positioned(
                                      left: -30,
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor:
                                            Theme.of(
                                              context,
                                            ).colorScheme.onSurface,
                                        backgroundImage: AssetImage(
                                          'assets/images/profile.png',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 60),
                          AddItem(),
                        ],
                      ),
                    );
                  },
                );
              },
              tileColor: Theme.of(context).colorScheme.tertiary,
              leading: Icon(Icons.list_rounded),
              title: Text(widget.listController.lists[index]),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              trailing: IconButton(
                onPressed: () {
                  widget.listController.removeList(index);
                  setState(() {});
                },
                icon: Icon(Icons.delete),
              ),
            ),
          ),
    );
  }
}
