import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black45,
      style: AppStyle.styleMedium16,
      decoration: InputDecoration(
        fillColor: const Color(0xFFFAFAFA),
        filled: true,
        hintText: hint,
        hintStyle: AppStyle.styleRegular16.copyWith(color: const Color(0xFFAAAAAA)),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color:  Color(0xFFFAFAFA), width: 0),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color:  Color(0xFFFAFAFA), width: 0),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
