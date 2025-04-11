import 'package:flutter/material.dart';

void main() {
  runApp(SwipeListApp());
}

class SwipeListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swipe strawhats',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: SwipeListPage(),
    );
  }
}

class SwipeListPage extends StatefulWidget {
  @override
  _SwipeListPageState createState() => _SwipeListPageState();
}

class _SwipeListPageState extends State<SwipeListPage> {
  List<String> items = List.generate(10, (index) => 'Crewmate ${index + 1}');

  void deleteItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  void editItem(int index) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Edit ${items[index]} tapped')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Crew List')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            key: Key(item),
            background: Container(
              color: Colors.green,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              child: Icon(Icons.edit, color: Colors.white),
            ),
            secondaryBackground: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.delete, color: Colors.white),
            ),
            confirmDismiss: (direction) async {
              if (direction == DismissDirection.startToEnd) {
              
                editItem(index);
                return false; 
              } else {
                bool confirm = await showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text("Delete ${items[index]}?"),
                    actions: [
                      TextButton(onPressed: () => Navigator.of(ctx).pop(false), child: Text("Cancel")),
                      TextButton(onPressed: () => Navigator.of(ctx).pop(true), child: Text("Delete")),
                    ],
                  ),
                );
                return confirm;
              }
            },
            onDismissed: (direction) {
              if (direction == DismissDirection.endToStart) {
                deleteItem(index);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('$item deleted')),
                );
              }
            },
            child: ListTile(
              title: Text(item),
            ),
          );
        },
      ),
    );
  }
}
