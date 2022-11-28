import 'dart:core';
import 'package:canopy_edu/screens/complete_profile_student/complete_profileStudent_screen2.dart';
import 'package:flutter/material.dart';
import 'package:canopy_edu/components/custom_surfix_icon.dart';
import 'package:canopy_edu/components/default_button.dart';
import 'package:canopy_edu/components/form_error.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
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
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildIdFormField(),
          buildCollegeFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(
                    context, CompleteProfileScreenStudent2.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  DropdownButtonFormField2<Object> buildCollegeFormField() {
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
        labelText: "College",
        hintText: "select your College",
        contentPadding: EdgeInsets.fromLTRB(40, 20, 20, 20),
      ),
      dropdownDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      items: CollegeItems.map((item) => DropdownMenuItem<String>(
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

  TextFormField buildIdFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      maxLength: 8,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Student Id Number",
        hintText: "Id number 20174078",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Student Name",
        hintText: "Enter your  name",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }
}
