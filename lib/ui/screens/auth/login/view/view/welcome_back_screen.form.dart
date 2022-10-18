// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String UsernameValueKey = 'username';
const String PasswordValueKey = 'password';

final Map<String, TextEditingController>
    _WelcomeBackScreenTextEditingControllers = {};

final Map<String, FocusNode> _WelcomeBackScreenFocusNodes = {};

final Map<String, String? Function(String?)?>
    _WelcomeBackScreenTextValidations = {
  UsernameValueKey: null,
  PasswordValueKey: null,
};

mixin $WelcomeBackScreen on StatelessWidget {
  TextEditingController get usernameController =>
      _getFormTextEditingController(UsernameValueKey);
  TextEditingController get passwordController =>
      _getFormTextEditingController(PasswordValueKey);
  FocusNode get usernameFocusNode => _getFormFocusNode(UsernameValueKey);
  FocusNode get passwordFocusNode => _getFormFocusNode(PasswordValueKey);

  TextEditingController _getFormTextEditingController(String key,
      {String? initialValue}) {
    if (_WelcomeBackScreenTextEditingControllers.containsKey(key)) {
      return _WelcomeBackScreenTextEditingControllers[key]!;
    }
    _WelcomeBackScreenTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _WelcomeBackScreenTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_WelcomeBackScreenFocusNodes.containsKey(key)) {
      return _WelcomeBackScreenFocusNodes[key]!;
    }
    _WelcomeBackScreenFocusNodes[key] = FocusNode();
    return _WelcomeBackScreenFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    usernameController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
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
          UsernameValueKey: usernameController.text,
          PasswordValueKey: passwordController.text,
        }),
    );
    if (_autoTextFieldValidation || forceValidate) {
      _updateValidationData(model);
    }
  }

  /// Updates the fieldsValidationMessages on the dynamic
  void _updateValidationData(dynamic model) => model.setValidationMessages({
        UsernameValueKey: _getValidationMessage(UsernameValueKey),
        PasswordValueKey: _getValidationMessage(PasswordValueKey),
      });

  /// Returns the validation message for the given key
  String? _getValidationMessage(String key) {
    final validatorForKey = _WelcomeBackScreenTextValidations[key];
    if (validatorForKey == null) return null;
    String? validationMessageForKey =
        validatorForKey(_WelcomeBackScreenTextEditingControllers[key]!.text);
    return validationMessageForKey;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _WelcomeBackScreenTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _WelcomeBackScreenFocusNodes.values) {
      focusNode.dispose();
    }

    _WelcomeBackScreenTextEditingControllers.clear();
    _WelcomeBackScreenFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get usernameValue => this.formValueMap[UsernameValueKey] as String?;
  String? get passwordValue => this.formValueMap[PasswordValueKey] as String?;

  bool get hasUsername => this.formValueMap.containsKey(UsernameValueKey);
  bool get hasPassword => this.formValueMap.containsKey(PasswordValueKey);

  bool get hasUsernameValidationMessage =>
      this.fieldsValidationMessages[UsernameValueKey]?.isNotEmpty ?? false;
  bool get hasPasswordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey]?.isNotEmpty ?? false;

  String? get usernameValidationMessage =>
      this.fieldsValidationMessages[UsernameValueKey];
  String? get passwordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey];
}

extension Methods on FormViewModel {
  setUsernameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[UsernameValueKey] = validationMessage;
  setPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PasswordValueKey] = validationMessage;
}
