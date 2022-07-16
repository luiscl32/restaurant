import 'package:flutter/material.dart';

class ContainedButton extends StatelessWidget {
  const ContainedButton({
    Key? key,
    required this.onPress,
    required this.buttonText,
  }) : super(key: key);

  final VoidCallback onPress;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPress,
        child: Center(
          child: Text(buttonText),
        ),
      ),
    );
  }
}
