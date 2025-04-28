import 'package:flutter/material.dart';
import 'package:sora/utils/palette.dart';

class DefaultTextField extends StatelessWidget {
  const DefaultTextField({
    required this.hintText,
    required this.validator,
    super.key,
    this.autocorrect = false,
    this.controller,
    this.initialValue,
    this.keyboardType,
    this.obscureText = false,
    this.onChanged,
    this.disabled = false,
  });

  final bool autocorrect;

  final TextEditingController? controller;

  final String? initialValue;

  final String hintText;

  final TextInputType? keyboardType;

  final bool obscureText;

  final void Function(String)? onChanged;

  final String? Function(String?)? validator;

  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: disabled,
      autocorrect: autocorrect,
      controller: controller,
      initialValue: initialValue,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Palette.black.withValues(alpha: 0.15),
          fontSize: 16,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: Palette.black.withValues(alpha: 0.15),
            width: 2,
          ),
        ),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Palette.greyLight, width: 2),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Palette.error, width: 1.5),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Palette.error, width: 2),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(width: 2),
        ),
      ),
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
