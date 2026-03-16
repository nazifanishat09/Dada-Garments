import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({
    super.key,


    this.validator,
    required this.title,
    this.isActive,
    this.onTep,
    this.supIcon, required this.keyboard, required this.controller,
  });
  final TextEditingController controller;
  final FormFieldValidator? validator;
  final String title;
  final bool? isActive;
  final VoidCallback? onTep;
  final InkWell? supIcon;
  final TextInputType keyboard;

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,

      cursorColor: Colors.orange,
      keyboardType: widget.keyboard,
      obscureText: widget.isActive ?? true ,
      decoration: InputDecoration(
        suffixIcon: widget.supIcon,
        hintText: "Enter ${widget.title} ",
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
