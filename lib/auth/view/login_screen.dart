import 'package:flutter/material.dart';
import 'package:gwangjin_smoking_area/auth/component/auth_layout.dart';
import 'package:gwangjin_smoking_area/common/component/custom_text_form_field.dart';
import 'package:gwangjin_smoking_area/common/theme/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = '';
  String password = '';

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      title: 'Login',
      children: Column(
        children: [
          Form(
            key: formKey,
            child: Column(
              children: [
                CustomTextFormField(
                  label: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Enter your email address',
                  onChanged: (value) {
                    setState(() => email = value);
                  },
                ),
                const SizedBox(height: 24.0),
                CustomTextFormField(
                  label: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  hintText: 'Set password',
                  suffixIcon: Icon(Icons.visibility, color: C_PRIMARY),
                  onChanged: (value) {
                    setState(() => password = value);
                  },
                  // autoFocus: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
