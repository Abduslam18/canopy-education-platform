import 'package:canopy_edu/screens/otp/otp_screen.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:chips_choice/chips_choice.dart';

import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm3 extends StatefulWidget {
  @override
  CompleteProfileForm3State createState() => CompleteProfileForm3State();
}

class CompleteProfileForm3State extends State<CompleteProfileForm3> {
  // list of string options
  final List<String?> errors = [];

  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  List<String> formValue = [];

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
          FormField<List<String>>(
              initialValue: formValue,
              onSaved: (val) => setState(() => formValue = val ?? []),
              validator: (value) {
                if (value?.isEmpty ?? value == null) {
                  addError(error: KCohicMaterialError);
                  return "";
                } else {
                  removeError(error: KCohicMaterialError);
                }
                if (value!.length > 7) {
                  addError(error: KCohicMaterialError2);
                  return "";
                } else {
                  removeError(error: KCohicMaterialError2);
                }
                return null;
              },
              builder: (state) {
                return Column(
                  children: <Widget>[
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          ChipsChoice<String>.multiple(
                            value: state.value ?? [],
                            onChanged: (val) => state.didChange(val),
                            choiceItems: C2Choice.listFrom<String, String>(
                              source: options2,
                              value: (i, v) => v,
                              label: (i, v) => v,
                              tooltip: (i, v) => v,
                              delete: (i, v) => () {
                                setState(() => options2.removeAt(i));
                              },
                            ),
                            choiceStyle: C2ChipStyle.filled(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                              color: Color(0xFF5222CF),
                              selectedStyle: const C2ChipStyle(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                                elevation: 5,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            leading: IconButton(
                              tooltip: 'Add Choice',
                              icon: const Icon(Icons.add_box_rounded),
                              onPressed: () => setState(
                                () =>
                                    options2.add('Opt #${options2.length + 1}'),
                              ),
                            ),
                            trailing: IconButton(
                              tooltip: 'Remove Choice',
                              icon: const Icon(Icons.remove_circle),
                              onPressed: () =>
                                  setState(() => options2.removeLast()),
                            ),
                            wrapped: true,
                          ),
                        ])),
                    Divider(
                      height: 2,
                      thickness: 2,
                      endIndent: 20,
                      indent: 20,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: ChipsChoice<String>.multiple(
                        value: state.value ?? [],
                        onChanged: (val) => state.didChange(val),
                        choiceItems: C2Choice.listFrom<String, String>(
                          source: options,
                          value: (i, v) => v.toLowerCase(),
                          label: (i, v) => v,
                          tooltip: (i, v) => v,
                        ),
                        choiceCheckmark: true,
                        choiceStyle: C2ChipStyle.filled(
                          color: Color(0xFF5222CF),
                          selectedStyle: const C2ChipStyle(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                            elevation: 5,
                            backgroundColor: Colors.white,
                          ),
                        ),
                        wrapped: true,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '${state.value!.length}/7 selected',
                        style: TextStyle(
                            color: state.hasError
                                ? Colors.redAccent
                                : Colors.green),
                      ),
                    ),
                    FormError(errors: errors),
                    SizedBox(height: getProportionateScreenHeight(40)),
                    DefaultButton(
                      text: "continue",
                      press: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, OtpScreen.routeName);
                        }
                      },
                    ),
                    SizedBox(height: getProportionateScreenHeight(40)),
                  ],
                );
              }),
        ],
      ),
    );
  }
}

class SearchBox extends StatefulWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final List<String> items = [
    'Web 1',
    'Dsp',
    'Software Eng.',
    'Automated Control System',
    'Robotic 1',
    'Embedded Software',
    'Machine Learning',
    'Communication System',
  ];

  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton2(
            icon: Icon(Icons.search),
            isExpanded: true,
            hint: Text(
              'Select subject',
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).hintColor,
              ),
            ),
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value as String;
              });
            },
            buttonHeight: 40,
            buttonWidth: 200,
            itemHeight: 40,
            dropdownMaxHeight: 200,
            searchController: textEditingController,
            searchInnerWidget: Padding(
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 4,
                right: 8,
                left: 8,
              ),
              child: TextFormField(
                controller: textEditingController,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 8,
                  ),
                  hintText: 'Search for an item...',
                  hintStyle: const TextStyle(fontSize: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            searchMatchFn: (item, searchValue) {
              return (item.value.toString().contains(searchValue));
            },
            //This to clear the search value when you close the menu
            onMenuStateChange: (isOpen) {
              if (!isOpen) {
                textEditingController.clear();
              }
            },
          ),
        ),
      ),
    );
  }
}
