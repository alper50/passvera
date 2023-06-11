import 'package:flutter/material.dart';

void showFormDialog(
    {required BuildContext context, required void Function()? onPressed,TextEditingController? controllerAppKey,TextEditingController? controllerAppValue}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Lets Add New One'),
        content: SingleChildScrollView(
          child: Column(children: [
            TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          TextFormField(
              controller: controllerAppKey,
              decoration: InputDecoration(hintText: 'Uygulama Adı'),
            ),
            TextFormField(
              controller: controllerAppValue,
              decoration: InputDecoration(hintText: 'Şifreniz plss..'),
            ),
          ],),
        ),
        actions: [
          TextButton(
            onPressed: onPressed,
            child: Text('Send'),
          ),
        ],
      );
    },
  );
}
