# quizzler_flutter

A new Flutter project.

## Notes

By adding angle brackets after declaring the data type of a variable, we define what types of values that variable can accept:
e.g.:

```dart
List<String> myStrings = ['a', 'b', 'c', 'd']; //this variable can only accept strings.

List<int> myIntegers = [1, 2, 3, 4, 5]; // this variable can only accept integers.

List<Widget> scoreKeeper = [Icon(Icons.check, color: Colors.lightGreen)]; //this varriable can only accept a list of Widgets.
```

### Dart[Lists]

```dart
void main() {
    List<String> myList = ['Angela', 'James','Katie','Jack'];

    print(myList[3]); // this would return/print "Jack".

    <!-- Dart List Functions -->
    myList.indexOf('Katie'); //this would return the index "2".

    myList.add('Ben'); // .add() - this function allows us to add a new item to our list while placing it at the end of the list. output: ['Angela', 'James','Katie','Jack', 'Ben']

    mylist.insert(2, 'Ben'); //.insert() - this function allows us to insert a new item on to a specified index of our list.
}
```
