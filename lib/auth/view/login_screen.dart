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
      title: '로그인',
      children: Form(
        key: formKey,
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomTextFormField(
                      label: '이메일',
                      keyboardType: TextInputType.emailAddress,
                      hintText: '이메일을 입력해주세요.',
                      onSaved: (value) {
                        if (value != null) setState(() => email = value);
                      },
                    ),
                    const SizedBox(height: 24.0),
                    CustomTextFormField(
                      label: '비밀번호',
                      obscureText: true,
                      hintText: '비밀번호를 입력해주세요.',
                      suffixIcon:
                          const Icon(Icons.visibility, color: C_PRIMARY),
                      onSaved: (value) {
                        if (value != null) setState(() => password = value);
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '계정이 없으신가요?',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            '회원가입 하러가기',
                            style: TextStyle(
                              color: C_PRIMARY,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          formKey.currentState?.save();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: C_PRIMARY,
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                        ),
                        child: const Text(
                          '로그인',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
