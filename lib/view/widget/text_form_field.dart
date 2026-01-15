import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.phoneC,
    this.validator,
    required this.title,
    this.isActive,
    this.onTep,
    this.supIcon,
  });

  final TextEditingController phoneC;
  final FormFieldValidator? validator;
  final String title;
  final bool? isActive;
  final VoidCallback? onTep;
  final InkWell? supIcon;

  //bool isActive = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: phoneC,
      validator: validator,

      cursorColor: Colors.orange,
      keyboardType: TextInputType.number,
      obscureText: isActive ?? false,
      decoration: InputDecoration(
        suffixIcon: supIcon,
        hintText: "Enter $title ",
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
