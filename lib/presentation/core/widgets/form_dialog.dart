import 'package:flutter/material.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';

void showFormDialog(
    {required BuildContext context,
    required void Function()? onPressed,
    TextEditingController? controllerAppKey,
    TextEditingController? controllerAppValue}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.yellow,
        contentPadding: EdgeInsets.all(30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(
            color: Colors.black,
            width: 4.0,
          ),
        ),
        title: Text(
          'Lets Add New One',
          style: MyTextStyles.headline2Bold,
        ),
        content: SingleChildScrollView(
          child: Column(
            children: [
              MyTextField(
                text: 'App Name',
                controller: controllerAppKey!,
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                text: 'Password Pls..',
                controller: controllerAppValue!,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: onPressed,
            child: Text('Send'),
          ),
          ElevatedButton(
            child: Text('Close'),
            style: ElevatedButton.styleFrom(
              primary: Colors.yellow,
              onPrimary: Colors.black,
              textStyle: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
              elevation: 0.0,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

class MyTextField extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  const MyTextField({
    super.key,
    required this.text,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.black,
          width: 3.0,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(-6.0, 6.0),
            blurRadius: 4.0,
            blurStyle: BlurStyle.solid,
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black,
          decoration: TextDecoration.none,
        ),
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
