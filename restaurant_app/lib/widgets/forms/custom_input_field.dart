import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
    this.labelText,
    this.hintText,
    this.helperText,
    this.prefixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.inputProperty,
    required this.inputValue,
    required this.validator,
  }) : super(key: key);

  final String? labelText;
  final String? hintText;
  final String? helperText;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;

  final bool obscureText;

  final String inputProperty;
  final Map<String, dynamic> inputValue;
  final Function(String? value) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) => inputValue[inputProperty] = value,
      validator: (value) => validator(value),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        prefixIcon: Icon(prefixIcon),
      ),
    );
  }
}
