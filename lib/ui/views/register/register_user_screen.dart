import 'package:flutter/material.dart';
import 'package:helloworld/ui/widgets/widget_edittext.dart';

class RegisterUserScreen extends StatelessWidget {
  const RegisterUserScreen({required String data});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String? _password;
    String? _confirmPassword;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/baby_yoda.jpeg'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/baby_yoda.jpeg',
                    width: 100,
                    height: 100,
                  ),
                  Text(
                    'App Name',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: WidgetEdittext(
                        hintText: 'Enter email',
                        inputType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        prefixIcon: const Icon(Icons.email_outlined),
                        validator: (value) {
                          if (value != null &&
                              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value)) {
                            return "please enter valid Email";
                          } else {
                            return null;
                          }
                        }),
                  ),
                  WidgetEdittext(
                    hintText: 'Enter password',
                    inputType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    prefixIcon: const Icon(Icons.lock_outline_rounded),
                    validator: (value) {
                      if (value != null && validateStructure(value)) {
                        return null;
                      } else {
                        return "please enter valid Password";
                      }
                    },
                    OnChanged: (p0) {
                      _password = p0;
                    },
                  ),
                  WidgetEdittext(
                    hintText: 'Enter confirm password',
                    inputType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    prefixIcon: const Icon(Icons.lock_outline_rounded),
                    validator: (value) {
                      if (value != null && _password == _confirmPassword) {
                        return null;
                      } else {
                        return "Password does not match";
                      }
                    },
                    OnChanged: (p0) {
                      _confirmPassword = p0;
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "signup click",
                              style: TextStyle(color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                            backgroundColor: Colors.transparent,
                          ),
                        );
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'SignUp',
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
}
