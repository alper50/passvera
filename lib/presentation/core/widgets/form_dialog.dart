import 'package:flutter/material.dart';
import 'package:passvera/presentation/core/theme/text_styles.dart';
import 'package:password_strength_checker/password_strength_checker.dart';

void showFormDialog(
    {required BuildContext context,
    required void Function() onPressed,
    String? title = 'Lets Add New One',
    TextEditingController? controllerAppKey,
    TextEditingController? controllerAppValue}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      final passNotifier = ValueNotifier<PasswordStrength?>(null);
      return AlertDialog(
        actionsAlignment: MainAxisAlignment.center,
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
          title!,
          style: MyTextStyles.headline2Bold,
        ),
        content: SingleChildScrollView(
          child: Column(
            children: [
              MyTextField(
                text: 'App Name',
                controller: controllerAppKey!,
                onChanged: (_) {},
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                text: 'Password Pls..',
                controller: controllerAppValue!,
                onChanged: (string) {
                  passNotifier.value = PasswordStrength.calculate(text: string);
                },
              ),
              SizedBox(
                height: 20,
              ),
              MyFormButton(
                title: 'Generate For Me',
                onPressed: () {
                  final config = PasswordGeneratorConfiguration(
                    //TODO configleri ayrı page te topla
                    length: 32,
                    minUppercase: 8,
                  );

                  final passwordGenerator = PasswordGenerator.fromConfig(
                    configuration: config,
                  );

                  final password = passwordGenerator.generate();
                  controllerAppValue.value = TextEditingValue(text: password);
                  passNotifier.value =
                      PasswordStrength.calculate(text: password);
                },
              ),
              SizedBox(
                height: 25,
              ),
              PasswordStrengthChecker(
                strength: passNotifier,
                configuration: PasswordStrengthCheckerConfiguration(
                    height: 30, borderWidth: 3),
              ),
            ],
          ),
        ),
        actions: [
          MyFormButton(
            title: 'Send',
            onPressed: () => onPressed(),
          ),
          MyFormButton(
            title: 'Close',
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      );
    },
  );
}

class MyFormButton extends StatelessWidget {
  const MyFormButton({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(title),
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
      onPressed: () => onPressed(),
    );
  }
}

class MyTextField extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final void Function(String) onChanged;
  const MyTextField({
    super.key,
    required this.text,
    required this.controller,
    required this.onChanged,
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
        onChanged: (string) => onChanged(string),
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
