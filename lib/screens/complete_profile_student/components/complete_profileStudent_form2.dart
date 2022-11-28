import 'dart:core';
import 'package:canopy_edu/screens/complete_profile_student/complete_profile_screen3.dart';
import 'package:flutter/material.dart';
import 'package:canopy_edu/components/default_button.dart';
import 'package:canopy_edu/components/form_error.dart';

import 'package:dropdown_button2/dropdown_button2.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileFormStudent2 extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileFormStudent2> {
  final _formKey = GlobalKey<FormState>();

  final List<String?> errors = [];

  String? selectCollege;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(30)),
          buildSemesterFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildSectionFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(
                    context, CompleteProfileScreenStudent3.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  DropdownButtonFormField2<Object> buildSectionFormField() {
    return DropdownButtonFormField2(
      onSaved: (newValue) => selectCollege = newValue.toString(),
      onChanged: (value) {
        if (value != null) {
          removeError(error: kCollegeNullError);
        }
        return null;
      },
      validator: (value) {
        if (value == null) {
          addError(error: kCollegeNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        //Add isDense true and zero Padding.
        //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
        labelText: "Year/Semester",
        hintText: "select your Years or Semester",
        contentPadding: EdgeInsets.fromLTRB(40, 20, 20, 20),
      ),
      dropdownDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      items: Years_semester.map((item) => DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          )).toList(),
      itemHeight: 40,
      dropdownMaxHeight: 200,
    );
  }

  DropdownButtonFormField2<Object> buildSemesterFormField() {
    return DropdownButtonFormField2(
      isExpanded: true,
      onSaved: (newValue) => selectCollege = newValue.toString(),
      onChanged: (value) {
        if (value != null) {
          removeError(error: kCollegeNullError);
        }
        return null;
      },
      validator: (value) {
        if (value == null) {
          addError(error: kCollegeNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        //Add isDense true and zero Padding.
        //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
        labelText: "Department",
        hintText: "select your Department",
        contentPadding: EdgeInsets.fromLTRB(40, 20, 20, 20),
      ),
      dropdownDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      items: Department.map((item) => DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          )).toList(),
      itemHeight: 40,
      dropdownMaxHeight: 200,
    );
  }
}
