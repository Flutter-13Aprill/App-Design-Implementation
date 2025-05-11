import 'package:flutter/material.dart';
import 'package:shopmate/extensions/screens/get_size_screen.dart';
import 'package:shopmate/widgets/add_list.dart';
import 'package:shopmate/widgets/text_field_thema.dart';
import 'package:shopmate/controller/list_controller.dart';

class ListsScreens extends StatefulWidget {
  const ListsScreens({super.key});

  @override
  State<ListsScreens> createState() => _ListsScreensState();
}

class _ListsScreensState extends State<ListsScreens> {
  final felidlist = TextEditingController();
  ListController listController = ListController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //The Drawer widget provides a navigation menu that slides in from the left.
      drawer: Drawer(
        //ListView to display a list of draw list
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiary,
              ),
              child: Text(
                'ShopMate',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: const Text('About ShopMate'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: const Text('Contact Us'),
              onTap: () {},
            ),
          ],
        ),
      ),
      //Show the title
      appBar: AppBar(
        title: Text('Lists'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      //Display the list
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: context.getHeight() * 0.10,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 5),
                    blurRadius: 5,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: AddList(listController: listController),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Add List'),

                actions: <Widget>[
                  TextFieldThema(
                    textController: felidlist,
                    textHint: 'Enter the list name',
                    textLabel: 'List name',
                  ),

                  TextButton(
                    onPressed: () {
                      setState(() {
                        listController.addList(felidlist.text);
                        felidlist.clear();
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
    );
  }
}
