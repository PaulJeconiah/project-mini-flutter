// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class ButtonDropDown extends StatefulWidget {
  const ButtonDropDown({
    super.key,
    required this.hint,
    required this.valJenisUsaha,
    required this.jenisUsaha,
  });

  final String hint;
  final void Function(String?) valJenisUsaha;
  final List<String> jenisUsaha;

  @override
  State<ButtonDropDown> createState() => _ButtonDropDownState();
}

class _ButtonDropDownState extends State<ButtonDropDown> {
  String? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<String>(
      isExpanded: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(38),
        ),

      ),
      hint: Text(widget.hint),
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w300,
      ),
      items: widget.jenisUsaha
          .map(
            (item) => DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            ),
          )
          .toList(),
      validator: (value) {
        if (value == null) {
          return widget.hint;
        }
        return null;
      },
      onSaved: (value) {
        _selectedValue = value.toString();
      },
      buttonStyleData: ButtonStyleData(
        padding: EdgeInsets.only(right: 8),
      ),
      iconStyleData: IconStyleData(
        icon: Icon(
          Icons.arrow_drop_down,
          color: Colors.white,
        ),
        iconSize: 30,
      ),
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
