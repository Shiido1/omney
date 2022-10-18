// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String NewPasswordValueKey = 'newPassword';
const String ConfirmPasswordValueKey = 'confirmPassword';

final Map<String, TextEditingController>
    _ResetPasswordScreenTextEditingControllers = {};

final Map<String, FocusNode> _ResetPasswordScreenFocusNodes = {};

final Map<String, String? Function(String?)?>
    _ResetPasswordScreenTextValidations = {
  NewPasswordValueKey: null,
  ConfirmPasswordValueKey: null,
};

mixin $ResetPasswordScreen on StatelessWidget {
  TextEditingController get NewPasswordController =>
      _getFormTextEditingController(NewPasswordValueKey);
  TextEditingController get ConfirmPasswordController =>
      _getFormTextEditingController(ConfirmPasswordValueKey);
  FocusNode get NewPasswordFocusNode => _getFormFocusNode(NewPasswordValueKey);
  FocusNode get ConfirmPasswordFocusNode =>
      _getFormFocusNode(ConfirmPasswordValueKey);

  TextEditingController _getFormTextEditingController(String key,
      {String? initialValue}) {
    if (_ResetPasswordScreenTextEditingControllers.containsKey(key)) {
      return _ResetPasswordScreenTextEditingControllers[key]!;
    }
    _ResetPasswordScreenTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _ResetPasswordScreenTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_ResetPasswordScreenFocusNodes.containsKey(key)) {
      return _ResetPasswordScreenFocusNodes[key]!;
    }
    _ResetPasswordScreenFocusNodes[key] = FocusNode();
    return _ResetPasswordScreenFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    NewPasswordController.addListener(() => _updateFormData(model));
    ConfirmPasswordController.addListener(() => _updateFormData(model));
  }

  final bool _autoTextFieldValidation = true;
  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Updates the formData on the dynamic
  void _updateFormData(dynamic model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          NewPasswordValueKey: NewPasswordController.text,
          ConfirmPasswordValueKey: ConfirmPasswordController.text,
        }),
    );
    if (_autoTextFieldValidation || forceValidate) {
      _updateValidationData(model);
    }
  }

  /// Updates the fieldsValidationMessages on the dynamic
  void _updateValidationData(dynamic model) => model.setValidationMessages({
        NewPasswordValueKey: _getValidationMessage(NewPasswordValueKey),
        ConfirmPasswordValueKey: _getValidationMessage(ConfirmPasswordValueKey),
      });

  /// Returns the validation message for the given key
  String? _getValidationMessage(String key) {
    final validatorForKey = _ResetPasswordScreenTextValidations[key];
    if (validatorForKey == null) return null;
    String? validationMessageForKey =
        validatorForKey(_ResetPasswordScreenTextEditingControllers[key]!.text);
    return validationMessageForKey;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _ResetPasswordScreenTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _ResetPasswordScreenFocusNodes.values) {
      focusNode.dispose();
    }

    _ResetPasswordScreenTextEditingControllers.clear();
    _ResetPasswordScreenFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get newPasswordValue =>
      this.formValueMap[NewPasswordValueKey] as String?;
  String? get confirmPasswordValue =>
      this.formValueMap[ConfirmPasswordValueKey] as String?;

  bool get hasNewPassword => this.formValueMap.containsKey(NewPasswordValueKey);
  bool get hasConfirmPassword =>
      this.formValueMap.containsKey(ConfirmPasswordValueKey);

  bool get hasNewPasswordValidationMessage =>
      this.fieldsValidationMessages[NewPasswordValueKey]?.isNotEmpty ?? false;
  bool get hasConfirmPasswordValidationMessage =>
      this.fieldsValidationMessages[ConfirmPasswordValueKey]?.isNotEmpty ??
      false;

  String? get newPasswordValidationMessage =>
      this.fieldsValidationMessages[NewPasswordValueKey];
  String? get confirmPasswordValidationMessage =>
      this.fieldsValidationMessages[ConfirmPasswordValueKey];
}

extension Methods on FormViewModel {
  setNewPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NewPasswordValueKey] = validationMessage;
  setConfirmPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ConfirmPasswordValueKey] =
          validationMessage;
}
