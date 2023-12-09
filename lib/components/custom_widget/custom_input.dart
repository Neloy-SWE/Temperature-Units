import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInput{
  static get({
    required BuildContext context,
    final FormFieldValidator<String>? validatorFunction,
    final List<TextInputFormatter>? inputFormatters,
    String hint = "100",
    String? label,
    IconData? suffixIcon,
    Widget? suffixWidget,
    Widget? prefixWidget,
    required TextEditingController controller,
    required TextInputType textInputType,
    required TextInputAction textInputAction,
    Function()? onEditingCompleteFunction,
    void Function(String)? onChanged,
    bool secure = false,
    FocusNode? focusNode,
    TextCapitalization textCapitalization = TextCapitalization.none,
  }) {
    return TextFormField(
      style: Theme.of(context).textTheme.bodyMedium,
      validator: validatorFunction,
      obscureText: secure,
      controller: controller,
      keyboardType: textInputType,
      focusNode: focusNode,
      cursorColor: Colors.black38,
      textInputAction: textInputAction,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      inputFormatters: inputFormatters,
      onEditingComplete: onEditingCompleteFunction,
      textCapitalization: textCapitalization,
      onChanged: onChanged,
      decoration: InputDecoration(
        errorStyle: Theme.of(context).textTheme.titleSmall,
        contentPadding: const EdgeInsets.all(10),
        alignLabelWithHint: true,
        prefixIcon: prefixWidget,
        suffixIcon: suffixWidget,
        // suffix: suffixWidget,
        border: OutlineInputBorder(
          borderSide: const BorderSide(width: 0.5, color: Colors.black),
          borderRadius: BorderRadius.circular(7),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.black),
          borderRadius: BorderRadius.circular(7),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.red),
          borderRadius: BorderRadius.circular(7),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 0.5, color: Colors.black),
          borderRadius: BorderRadius.circular(7),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.black54),
          borderRadius: BorderRadius.circular(7),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.red),
          borderRadius: BorderRadius.circular(7),
        ),

        hintText: hint,
        hintStyle: const TextStyle(color: Colors.black26, fontSize: 12,),
        labelText: label,
        labelStyle: const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
      ),
    );
  }
}