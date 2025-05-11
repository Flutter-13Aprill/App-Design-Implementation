/// A controller class responsible for managing a list of strings.
class ListController {
  List<String> lists = [];

  /// Adds a new item to the list.
  void addList(String name) {
    lists.add(name);
  }

  /// Removes an item from the list
  void removeList(int index) {
    lists.remove(lists[index]);
  }
}
