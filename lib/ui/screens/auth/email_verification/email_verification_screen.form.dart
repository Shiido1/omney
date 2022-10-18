// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String OtpValueKey = 'otp';

final Map<String, TextEditingController>
    _EmailVerificationScreenTextEditingControllers = {};

final Map<String, FocusNode> _EmailVerificationScreenFocusNodes = {};

final Map<String, String? Function(String?)?>
    _EmailVerificationScreenTextValidations = {
  OtpValueKey: null,
};

mixin $EmailVerificationScreen on StatelessWidget {
  TextEditingController get otpController =>
      _getFormTextEditingController(OtpValueKey);
  FocusNode get otpFocusNode => _getFormFocusNode(OtpValueKey);

  TextEditingController _getFormTextEditingController(String key,
      {String? initialValue}) {
    if (_EmailVerificationScreenTextEditingControllers.containsKey(key)) {
      return _EmailVerificationScreenTextEditingControllers[key]!;
    }
    _EmailVerificationScreenTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _EmailVerificationScreenTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_EmailVerificationScreenFocusNodes.containsKey(key)) {
      return _EmailVerificationScreenFocusNodes[key]!;
    }
    _EmailVerificationScreenFocusNodes[key] = FocusNode();
    return _EmailVerificationScreenFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    otpController.addListener(() => _updateFormData(model));
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
          OtpValueKey: otpController.text,
        }),
    );
    if (_autoTextFieldValidation || forceValidate) {
      _updateValidationData(model);
    }
  }

  /// Updates the fieldsValidationMessages on the dynamic
  void _updateValidationData(dynamic model) => model.setValidationMessages({
        OtpValueKey: _getValidationMessage(OtpValueKey),
      });

  /// Returns the validation message for the given key
  String? _getValidationMessage(String key) {
    final validatorForKey = _EmailVerificationScreenTextValidations[key];
    if (validatorForKey == null) return null;
    String? validationMessageForKey = validatorForKey(
        _EmailVerificationScreenTextEditingControllers[key]!.text);
    return validationMessageForKey;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller
        in _EmailVerificationScreenTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _EmailVerificationScreenFocusNodes.values) {
      focusNode.dispose();
    }

    _EmailVerificationScreenTextEditingControllers.clear();
    _EmailVerificationScreenFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get otpValue => this.formValueMap[OtpValueKey] as String?;

  bool get hasOtp => this.formValueMap.containsKey(OtpValueKey);

  bool get hasOtpValidationMessage =>
      this.fieldsValidationMessages[OtpValueKey]?.isNotEmpty ?? false;

  String? get otpValidationMessage =>
      this.fieldsValidationMessages[OtpValueKey];
}

extension Methods on FormViewModel {
  setOtpValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[OtpValueKey] = validationMessage;
}
