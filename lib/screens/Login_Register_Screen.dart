import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maaz_class/models/constants.dart';
import 'package:maaz_class/widgets/widgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}
class _RegisterScreenState extends State<RegisterScreen> {
  int press = 1;

  void pressed() {
    setState(() {
      press++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kBorderColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 52.h,
                ),
                Text(
                  "Sign Up to Masterminds",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: kDarkTextColor,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Wrap(
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: kLightTextColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        pressed();
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: kPurpleColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                getTextField(hint: "Full Name"),
                SizedBox(
                  height: 16.h,
                ),
                getTextField(hint: "Email"),
                SizedBox(
                  height: 16.h,
                ),
                getTextField(hint: "Password"),
                SizedBox(
                  height: 16.h,
                ),
                getTextField(hint: "Confirm Password"),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text("Create Account"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kPurpleColor),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                          vertical: 14.h,
                        ),
                      ),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    const Expanded(child: Divider()),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      "or sign up via",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: kLightTextColor),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    const Expanded(child: Divider()),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      pressed();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("assets/Google.png"),
                        SizedBox(width: 10.w),
                        const Text("Google"),
                      ],
                    ),
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        const BorderSide(color: kBorderColor),
                      ),
                      foregroundColor:
                          MaterialStateProperty.all(kDarkTextColor),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                          vertical: 14.h,
                        ),
                      ),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Wrap(
                  children: [
                    Text(
                      "By signing up to Masterminds you agree to our ",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: kLightTextColor,
                      ),
                    ),
                    Text(
                      "terms and conditions",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: kPurpleColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text("Button is press: $press"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kBorderColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 52.h,
                ),
                Text(
                  "Sign Up to Masterminds",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: kDarkTextColor,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Wrap(
                  children: [
                    Text(
                      "Create a new account? ",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: kLightTextColor,
                      ),
                    ),
                    Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: kPurpleColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),

                getTextField(hint: "Email"),
                SizedBox(
                  height: 16.h,
                ),
                getTextField(hint: "Password"),
                SizedBox(
                  height: 16.h,
                ),

                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text("Login"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kPurpleColor),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                          vertical: 14.h,
                        ),
                      ),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    const Expanded(child: Divider()),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      "or sign up via",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: kLightTextColor),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    const Expanded(child: Divider()),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("assets/Google.png"),
                        SizedBox(width: 10.w),
                        const Text("Google"),
                      ],
                    ),
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        const BorderSide(color: kBorderColor),
                      ),
                      foregroundColor:
                          MaterialStateProperty.all(kDarkTextColor),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                          vertical: 14.h,
                        ),
                      ),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Wrap(
                  children: [
                    Text(
                      "By signing up to Masterminds you agree to our ",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: kLightTextColor,
                      ),
                    ),
                    Text(
                      "terms and conditions",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: kPurpleColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kBorderColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 52.h,
                ),
                // Text(
                //   "Sign Up to Masterminds",
                //   style: TextStyle(
                //     fontSize: 18.sp,
                //     fontWeight: FontWeight.w700,
                //     color: kDarkTextColor,
                //   ),
                // ),
                // SizedBox(
                //   height: 4.h,
                // ),
                // Wrap(
                //   children: [
                //     Text(
                //       "Create a new account? ",
                //       style: TextStyle(
                //         fontSize: 14.sp,
                //         fontWeight: FontWeight.w600,
                //         color: kLightTextColor,
                //       ),
                //     ),
                //     Text(
                //       "Register",
                //       style: TextStyle(
                //         fontSize: 14.sp,
                //         fontWeight: FontWeight.w700,
                //         color: kPurpleColor,
                //       ),
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: 24.h,
                ),

                getTextField(hint: "Email"),
                SizedBox(
                  height: 16.h,
                ),
                // getTextField(hint: "Password"),
                // SizedBox(
                //   height: 16.h,
                // ),

                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text("Submit"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kPurpleColor),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                          vertical: 14.h,
                        ),
                      ),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 16.h,
                // ),
                // Row(
                //   children: [
                //     const Expanded(child: Divider()),
                //     SizedBox(
                //       width: 16.w,
                //     ),
                //     Text(
                //       "or sign up via",
                //       style: TextStyle(
                //           fontSize: 14.sp,
                //           fontWeight: FontWeight.w500,
                //           color: kLightTextColor),
                //     ),
                //     SizedBox(
                //       width: 16.w,
                //     ),
                //     const Expanded(child: Divider()),
                //   ],
                // ),
                // SizedBox(
                //   height: 16.h,
                // ),
                // SizedBox(
                //   width: double.infinity,
                //   child: TextButton(
                //     onPressed: () {},
                //     child: Row(
                //       mainAxisSize: MainAxisSize.min,
                //       children: [
                //         Image.asset("assets/Google.png"),
                //         SizedBox(width: 10.w),
                //         const Text("Google"),
                //       ],
                //     ),
                //     style: ButtonStyle(
                //       side: MaterialStateProperty.all(
                //         const BorderSide(color: kBorderColor),
                //       ),
                //       foregroundColor:
                //       MaterialStateProperty.all(kDarkTextColor),
                //       padding: MaterialStateProperty.all(
                //         EdgeInsets.symmetric(
                //           vertical: 14.h,
                //         ),
                //       ),
                //       textStyle: MaterialStateProperty.all(
                //         TextStyle(
                //           fontSize: 14.sp,
                //           fontWeight: FontWeight.w700,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 16.h,
                ),
                Wrap(
                  children: [
                    Text(
                      "By signing up to Masterminds you agree to our ",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: kLightTextColor,
                      ),
                    ),
                    Text(
                      "terms and conditions",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: kPurpleColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

