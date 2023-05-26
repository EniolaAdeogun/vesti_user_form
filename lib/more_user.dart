import 'package:flutter/material.dart';
import 'package:vesti_user_form/user_model.dart';

class FormListWidget extends StatefulWidget {
  @override
  _FormListWidgetState createState() => _FormListWidgetState();
}

class _FormListWidgetState extends State<FormListWidget> {
  List<String> UserForm = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staff List'),
      ),
      body: ListView.builder(
        itemCount: UserForm.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('User ${index + 1}'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  UserForm.removeAt(index);
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: ElevatedButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            UserForm.add('New User');
          });
        },
      ),
    );
  }
}
