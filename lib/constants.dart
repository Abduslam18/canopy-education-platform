import 'package:flutter/material.dart';
import 'package:canopy_edu/size_config.dart';

//اذكر لازم اضيف if عشان لو اختار اتجاه عام يجب ان يختار فقط سمستر اول او ثاني من سنة اولى ولو اختار تخصص يجب ان يختار من سنة ثانية فقط مع اضهار رسالة خطأ
// يجب عمل كلاس خاص بالتخصصات يحتوي على تخصص كل قسم مع شرط if بحيث يضهر للمستخدم التخصصات على حسب اختياره للقسم

final List<String> Department = [
  'general direction',
  'Computer',
  'Electrical',
  'Electrical / Power',
  'Electrical / Networks ',
  'Architecture',
  'Civil',
  'Chemical',
  'Materials science',
  'Renewable energy',
];
final List<String> Years_semester = [
  'first year / 1',
  'first year / 2',
  'second year / 1',
  'second year / 2',
  'third year / 1',
  'third year / 2',
  'fourth year / 1',
  'fourth year / 2',
  'fifth year / 1',
  'fifth year / 2',
  'close semester 1',
  'close semester 2',
  'close semester 3',
  'close semester 4',
  'close semester 5',
];

final List<String> Adjective = [
  'Teaching Assistant',
  'Dr.',
  'Mr.',
  'prof.',
];
final List<String> CollegeItems = [
  'Engineering',
  'Literature',
  'Agriculture',
  'Veterinary Medicine',
  'Science',
  'Economics',
  'Education',
  'Languages',
  'Law',
  'Tourism & Antiquities',
  'Natural Resources',
  'Medicine',
  'Nursing',
  'Pharmacy',
  'Medical Technology',
];
final List<String> options2 = [
  'Math 4',
  'Writing report',
  'Communication Skills'
];
final List<String> options = [
  'Advance C++',
  'Web programing 1',
  'Mobile App deve.',
  'Digital System 2',
  'Database Development',
  'O.O.P',
  'Numerical Analysis',
  'Computer Arch.'
];
const kPrimaryColor = Colors.black;
const KPrimaryColorTime = Colors.green;
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(25),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);
const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAdjectiveNullError = "Please Select your adjective";
const String kCollegeNullError = "Please Select your college";
const String KCohicMaterialError = "Please select some categories";
const String KCohicMaterialError2 = "Can't select more than 7 categories";
final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
