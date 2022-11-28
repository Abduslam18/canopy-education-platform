import 'package:canopy_edu/screens/are_you/are_you_screen.dart';
import 'package:canopy_edu/screens/complete_profile_student/complete_profile_screen.dart';
import 'package:canopy_edu/screens/complete_profile_teacher/complete_profile_t_screen.dart';
import 'package:canopy_edu/screens/complete_profile_teacher/complete_profileTetcher_screen2.dart';
import 'package:canopy_edu/screens/complete_profile_teacher/complete_profile_t_screen3.dart';
import 'package:canopy_edu/screens/sign_up_student/sign_up_screen.dart';
import 'package:canopy_edu/screens/sign_up_teacher/sign_up_screen.dart';
import 'package:canopy_edu/screens/splash/components/slider_creen.dart';
import 'package:flutter/widgets.dart';
import 'package:canopy_edu/screens/cart/cart_screen.dart';
import 'package:canopy_edu/screens/details/details_screen.dart';
import 'package:canopy_edu/screens/forgot_password/forgot_password_screen.dart';
import 'package:canopy_edu/screens/home/home_screen.dart';
import 'package:canopy_edu/screens/login_success/login_success_screen.dart';
import 'package:canopy_edu/screens/otp/otp_screen.dart';
import 'package:canopy_edu/screens/profile/profile_screen.dart';
import 'package:canopy_edu/screens/sign_in/sign_in_screen.dart';
import 'package:canopy_edu/screens/splash/splash_screen.dart';

import 'screens/complete_profile_student/complete_profileStudent_screen2.dart';
import 'screens/complete_profile_student/complete_profile_screen3.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  Are_you_screen.routeName: (context) => Are_you_screen(),
  Slider_creen.routeName: (context) => Slider_creen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreenStudent.routeName: (context) => SignUpScreenStudent(),
  SignUpScreenTeacher.routeName: (context) => SignUpScreenTeacher(),
  CompleteProfileScreenStudent.routeName: (context) =>
      CompleteProfileScreenStudent(),
  CompleteProfileScreenStudent2.routeName: (context) =>
      CompleteProfileScreenStudent2(),
  CompleteProfileScreenStudent3.routeName: (context) =>
      CompleteProfileScreenStudent3(),
  CompleteProfileScreenTeacher.routeName: (context) =>
      CompleteProfileScreenTeacher(),
  CompleteProfileScreenTeacher2.routeName: (context) =>
      CompleteProfileScreenTeacher2(),
  CompleteProfileScreenTeacher3.routeName: (context) =>
      CompleteProfileScreenTeacher3(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
