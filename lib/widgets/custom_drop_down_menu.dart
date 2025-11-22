import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class CustomDropDownMenu extends StatefulWidget {
  const CustomDropDownMenu({super.key});

  @override
  State<CustomDropDownMenu> createState() => _CustomDropDownMenuState();
}

class _CustomDropDownMenuState extends State<CustomDropDownMenu> {
  String selectedPeriod = 'Weekly';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: const Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          borderRadius: BorderRadius.circular(12),
          icon: Icon(Icons.keyboard_arrow_down, color: const Color(0xff064061)),
          value: selectedPeriod,
          style: AppStyle.styleMedium16,
          items: [
            DropdownMenuItem<String>(value: 'Weekly', child: Text('Weekly')),
            DropdownMenuItem<String>(value: 'Monthly', child: Text('Monthly')),
            DropdownMenuItem<String>(value: 'Yearly', child: Text('Yearly')),
          ],
          onChanged: (value) {
            if (value != null) {
              setState(() {
                selectedPeriod = value;
              });
            }
          },
        ),
      ),
    );
  }
}