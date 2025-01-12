import 'package:flutter/material.dart';
import 'border_text_field.dart';


class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.perfix,
      required this.validator,
      // required this.suffix,
      required this.textInputType,
      required this.label,
      required this.hint, required TextEditingController controller, required IconData prefix, required IconButton suffix, required TextInputType keyboard});
  final TextInputType textInputType;
  final String label;
  final String hint;
  final TextEditingController controller = TextEditingController();
  final TextInputType keybord = TextInputType.text;
  final IconData perfix;
  String? Function(String?)? validator;
  // final IconData suffix;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        keyboardType: keybord,
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: Icon(perfix),
            // suffixIcon: Icon(suffix),
            suffix: IconButton(
              onPressed: () {
                controller.clear();
              },
              icon: const Icon(Icons.highlight_remove_outlined),
            ),
            labelText: label,
            hintText: hint,
            enabledBorder: border(color: Colors.teal, radius: 10),
            focusedBorder: border(color: Colors.black, radius: 10)),
      ),
    );
  }
}