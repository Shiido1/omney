import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:omney/ui/utils/color/app_color_utils.dart';

// ignore: must_be_immutable
class TextFormWidget extends StatelessWidget {
  final TextCapitalization? textCapitalization;
  final String? label;
  final String? floatingLabel;
  final String? hint;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Widget? suffixWidget;
  final Widget? prefixWidget;
  final FormFieldValidator<String>? validator;
  final VoidCallback? onPasswordToggle;
  final Function(String)? onChange;

  final String? initialValue;
  List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final AutovalidateMode? autoValidateMode;
  final bool? obscureText;
  final bool? readOnly;
  final Function()? onTapped;

  final TextInputType? keyboardType;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final Key? formKey;
  final double? size;

  TextFormWidget({
    Key? key,
    this.textCapitalization,
    this.label,
    this.floatingLabel,
    this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixWidget,
    this.prefixWidget,
    this.validator,
    this.onPasswordToggle,
    this.initialValue,
    this.inputFormatters,
    this.controller,
    this.autoValidateMode,
    this.obscureText = false,
    this.readOnly = false,
    this.onTapped,
    this.keyboardType,
    this.suffixIconColor,
    this.prefixIconColor,
    this.onChange,
    this.formKey,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: label ?? '',
          labelStyle: const TextStyle(color: AppColor.bleugrey, fontSize: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: AppColor.bleugrey),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1, color: AppColor.bleugrey),
          ),
          disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1, color: Colors.grey),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1, color: AppColor.bleugrey),
          ),
          errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 1, color: Colors.red)),
          focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 1, color: Colors.redAccent)),
          prefixIcon: prefixWidget ??
              (prefixIcon != null
                  ? IconButton(
                      onPressed: onPasswordToggle,
                      icon: Icon(
                        prefixIcon,
                        color: prefixIconColor,
                      ))
                  : null),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(1.5),
            child: suffixWidget ??
                (suffixIcon != null
                    ? IconButton(
                        onPressed: onPasswordToggle,
                        iconSize: size,
                        icon: Icon(
                          suffixIcon,
                          color: suffixIconColor,
                        ))
                    : null),
          )),
      obscureText: obscureText!,
      controller: controller,
      readOnly: readOnly!,
      onTap: onTapped,
      key: formKey,
      cursorColor: AppColor.primary,
      onChanged: onChange,
    );
  }
}
