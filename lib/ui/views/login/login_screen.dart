import 'package:flutter/material.dart';
import 'package:helloworld/ui/theme/config.dart';
import 'package:helloworld/ui/views/dashboard/home.dart';
import 'package:helloworld/ui/views/login/row_remember_me.dart';
import 'package:helloworld/ui/views/register/register_user_screen.dart';
import 'package:helloworld/ui/widgets/widget_edittext.dart';

class MyStatelessWidget extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  bool isCheckBoxChecked = false;

  MyStatelessWidget({Key? key}) : super(key: key);

  // bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 45,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/baby_yoda.jpeg',
                          width: 100,
                          height: 100,
                        ),
                        const Text(
                          'App Name',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 55,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          WidgetEdittext(
                            hintText: 'Email',
                            inputType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            prefixIcon: const Icon(
                              Icons.email_outlined,
                            ),
                            validator: (value) {
                              if (value != null &&
                                  !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(value)) {
                                return "please enter valid Email";
                              } else {
                                return null;
                              }
                            },
                          ),
                          WidgetEdittext(
                            hintText: 'password',
                            inputType: TextInputType.text,
                            textInputAction: TextInputAction.done,
                            prefixIcon: const Icon(Icons.lock_outline_rounded),
                            validator: (value) {
                              if (value != null && !validateStructure(value)) {
                                return "please enter valid Password";
                              } else {
                                return null;
                              }
                            },
                            OnChanged: (p0) {
                              print(p0);
                            },
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RowRememberMe(
                                  changeCheck: (p0) {
                                    isCheckBoxChecked = p0;
                                  },
                                ),
                              ),
                              const Expanded(
                                child: Text(
                                  'forget password?',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              currentTheme.toggleTheme();
                              if (!_formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      "missing some validation",
                                      style: TextStyle(color: Colors.black),
                                      textAlign: TextAlign.center,
                                    ),
                                    backgroundColor: Colors.transparent,
                                  ),
                                );
                              } else if (!isCheckBoxChecked) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      "checkbox is false",
                                      style: TextStyle(color: Colors.black),
                                      textAlign: TextAlign.center,
                                    ),
                                    backgroundColor: Colors.transparent,
                                  ),
                                );
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Home(),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blue.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterUserScreen(data: 'milap chokshi'),
                                ),
                              );
                            },
                            child: const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(text: "Don't have any account? "),
                                  TextSpan(
                                    text: "Signup here",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool validateStructure(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  void _onPress() {}
}
