import 'package:flutter/material.dart';
import 'package:gwangjin_smoking_area/common/theme/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final bool? autoFocus;
  final String? hintText;
  final Icon? suffixIcon;
  final ValueChanged<String> onChanged;

  const CustomTextFormField({
    super.key,
    required this.label,
    this.keyboardType,
    this.obscureText,
    this.autoFocus,
    this.hintText,
    this.suffixIcon,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(color: C_SECONDARY),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          textAlign: TextAlign.start,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 8.0),
        TextFormField(
          onChanged: onChanged,
          onTapOutside: (_) => FocusScope.of(context).unfocus(),
          keyboardType: keyboardType ?? TextInputType.text,
          obscureText: obscureText ?? false,
          cursorColor: C_PRIMARY,
          autofocus: autoFocus ?? false,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintText: hintText,
            enabledBorder: borderStyle,
            focusedBorder: borderStyle.copyWith(
              borderSide: const BorderSide(color: C_PRIMARY),
            ),
          ),
        ),
      ],
    );
  }
}
