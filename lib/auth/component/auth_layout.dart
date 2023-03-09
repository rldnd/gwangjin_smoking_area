import 'package:flutter/material.dart';
import 'package:gwangjin_smoking_area/common/theme/colors.dart';

class AuthLayout extends StatelessWidget {
  final String title;
  final Widget children;

  const AuthLayout({super.key, required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: C_PRIMARY,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: kToolbarHeight),
            renderTitle(title: title),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 50.0,
                    ),
                    child: children,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget renderTitle({required String title}) {
    return Column(
      children: [
        const SizedBox(height: 40.0),
        Text(
          title,
          style: const TextStyle(
            color: C_WHITE,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 40.0),
      ],
    );
  }
}
