// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String FirstNameValueKey = 'firstName';
const String SurnameValueKey = 'surname';
const String GenderValueKey = 'gender';
const String PhoneNumberValueKey = 'phoneNumber';
const String DateofBirthValueKey = 'dateofBirth';
const String ReferrerCodeValueKey = 'referrerCode';
const String EmailValueKey = 'email';
const String ConfirmPasswordValueKey = 'confirmPassword';
const String NationalityIdValueKey = 'nationalityId';
const String PasswordValueKey = 'password';
const String ChannelIdValueKey = 'channelId';
const String CSCSNUmberValueKey = 'cSCSNUmber';
const String DeviceTokenValueKey = 'deviceToken';
const String MaidenNameValueKey = 'maidenName';
const String BvnValueKey = 'bvn';

final Map<String, TextEditingController>
    _GetStartedScreenTextEditingControllers = {};

final Map<String, FocusNode> _GetStartedScreenFocusNodes = {};

final Map<String, String? Function(String?)?> _GetStartedScreenTextValidations =
    {
  FirstNameValueKey: null,
  SurnameValueKey: null,
  GenderValueKey: null,
  PhoneNumberValueKey: null,
  DateofBirthValueKey: null,
  ReferrerCodeValueKey: null,
  EmailValueKey: null,
  ConfirmPasswordValueKey: null,
  NationalityIdValueKey: null,
  PasswordValueKey: null,
  ChannelIdValueKey: null,
  CSCSNUmberValueKey: null,
  DeviceTokenValueKey: null,
  MaidenNameValueKey: null,
  BvnValueKey: null,
};

mixin $GetStartedScreen on StatelessWidget {
  TextEditingController get firstNameController =>
      _getFormTextEditingController(FirstNameValueKey);
  TextEditingController get surnameController =>
      _getFormTextEditingController(SurnameValueKey);
  TextEditingController get genderController =>
      _getFormTextEditingController(GenderValueKey);
  TextEditingController get phoneNumberController =>
      _getFormTextEditingController(PhoneNumberValueKey);
  TextEditingController get dateofBirthController =>
      _getFormTextEditingController(DateofBirthValueKey);
  TextEditingController get referrerCodeController =>
      _getFormTextEditingController(ReferrerCodeValueKey);
  TextEditingController get emailController =>
      _getFormTextEditingController(EmailValueKey);
  TextEditingController get confirmPasswordController =>
      _getFormTextEditingController(ConfirmPasswordValueKey);
  TextEditingController get nationalityIdController =>
      _getFormTextEditingController(NationalityIdValueKey);
  TextEditingController get passwordController =>
      _getFormTextEditingController(PasswordValueKey);
  TextEditingController get channelIdController =>
      _getFormTextEditingController(ChannelIdValueKey);
  TextEditingController get cSCSNUmberController =>
      _getFormTextEditingController(CSCSNUmberValueKey);
  TextEditingController get deviceTokenController =>
      _getFormTextEditingController(DeviceTokenValueKey);
  TextEditingController get maidenNameController =>
      _getFormTextEditingController(MaidenNameValueKey);
  TextEditingController get bvnController =>
      _getFormTextEditingController(BvnValueKey);
  FocusNode get firstNameFocusNode => _getFormFocusNode(FirstNameValueKey);
  FocusNode get surnameFocusNode => _getFormFocusNode(SurnameValueKey);
  FocusNode get genderFocusNode => _getFormFocusNode(GenderValueKey);
  FocusNode get phoneNumberFocusNode => _getFormFocusNode(PhoneNumberValueKey);
  FocusNode get dateofBirthFocusNode => _getFormFocusNode(DateofBirthValueKey);
  FocusNode get referrerCodeFocusNode =>
      _getFormFocusNode(ReferrerCodeValueKey);
  FocusNode get emailFocusNode => _getFormFocusNode(EmailValueKey);
  FocusNode get confirmPasswordFocusNode =>
      _getFormFocusNode(ConfirmPasswordValueKey);
  FocusNode get nationalityIdFocusNode =>
      _getFormFocusNode(NationalityIdValueKey);
  FocusNode get passwordFocusNode => _getFormFocusNode(PasswordValueKey);
  FocusNode get channelIdFocusNode => _getFormFocusNode(ChannelIdValueKey);
  FocusNode get cSCSNUmberFocusNode => _getFormFocusNode(CSCSNUmberValueKey);
  FocusNode get deviceTokenFocusNode => _getFormFocusNode(DeviceTokenValueKey);
  FocusNode get maidenNameFocusNode => _getFormFocusNode(MaidenNameValueKey);
  FocusNode get bvnFocusNode => _getFormFocusNode(BvnValueKey);

  TextEditingController _getFormTextEditingController(String key,
      {String? initialValue}) {
    if (_GetStartedScreenTextEditingControllers.containsKey(key)) {
      return _GetStartedScreenTextEditingControllers[key]!;
    }
    _GetStartedScreenTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _GetStartedScreenTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_GetStartedScreenFocusNodes.containsKey(key)) {
      return _GetStartedScreenFocusNodes[key]!;
    }
    _GetStartedScreenFocusNodes[key] = FocusNode();
    return _GetStartedScreenFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    firstNameController.addListener(() => _updateFormData(model));
    surnameController.addListener(() => _updateFormData(model));
    genderController.addListener(() => _updateFormData(model));
    phoneNumberController.addListener(() => _updateFormData(model));
    dateofBirthController.addListener(() => _updateFormData(model));
    referrerCodeController.addListener(() => _updateFormData(model));
    emailController.addListener(() => _updateFormData(model));
    confirmPasswordController.addListener(() => _updateFormData(model));
    nationalityIdController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
    channelIdController.addListener(() => _updateFormData(model));
    cSCSNUmberController.addListener(() => _updateFormData(model));
    deviceTokenController.addListener(() => _updateFormData(model));
    maidenNameController.addListener(() => _updateFormData(model));
    bvnController.addListener(() => _updateFormData(model));
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
          FirstNameValueKey: firstNameController.text,
          SurnameValueKey: surnameController.text,
          GenderValueKey: genderController.text,
          PhoneNumberValueKey: phoneNumberController.text,
          DateofBirthValueKey: dateofBirthController.text,
          ReferrerCodeValueKey: referrerCodeController.text,
          EmailValueKey: emailController.text,
          ConfirmPasswordValueKey: confirmPasswordController.text,
          NationalityIdValueKey: nationalityIdController.text,
          PasswordValueKey: passwordController.text,
          ChannelIdValueKey: channelIdController.text,
          CSCSNUmberValueKey: cSCSNUmberController.text,
          DeviceTokenValueKey: deviceTokenController.text,
          MaidenNameValueKey: maidenNameController.text,
          BvnValueKey: bvnController.text,
        }),
    );
    if (_autoTextFieldValidation || forceValidate) {
      _updateValidationData(model);
    }
  }

  /// Updates the fieldsValidationMessages on the dynamic
  void _updateValidationData(dynamic model) => model.setValidationMessages({
        FirstNameValueKey: _getValidationMessage(FirstNameValueKey),
        SurnameValueKey: _getValidationMessage(SurnameValueKey),
        GenderValueKey: _getValidationMessage(GenderValueKey),
        PhoneNumberValueKey: _getValidationMessage(PhoneNumberValueKey),
        DateofBirthValueKey: _getValidationMessage(DateofBirthValueKey),
        ReferrerCodeValueKey: _getValidationMessage(ReferrerCodeValueKey),
        EmailValueKey: _getValidationMessage(EmailValueKey),
        ConfirmPasswordValueKey: _getValidationMessage(ConfirmPasswordValueKey),
        NationalityIdValueKey: _getValidationMessage(NationalityIdValueKey),
        PasswordValueKey: _getValidationMessage(PasswordValueKey),
        ChannelIdValueKey: _getValidationMessage(ChannelIdValueKey),
        CSCSNUmberValueKey: _getValidationMessage(CSCSNUmberValueKey),
        DeviceTokenValueKey: _getValidationMessage(DeviceTokenValueKey),
        MaidenNameValueKey: _getValidationMessage(MaidenNameValueKey),
        BvnValueKey: _getValidationMessage(BvnValueKey),
      });

  /// Returns the validation message for the given key
  String? _getValidationMessage(String key) {
    final validatorForKey = _GetStartedScreenTextValidations[key];
    if (validatorForKey == null) return null;
    String? validationMessageForKey =
        validatorForKey(_GetStartedScreenTextEditingControllers[key]!.text);
    return validationMessageForKey;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _GetStartedScreenTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _GetStartedScreenFocusNodes.values) {
      focusNode.dispose();
    }

    _GetStartedScreenTextEditingControllers.clear();
    _GetStartedScreenFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get firstNameValue => this.formValueMap[FirstNameValueKey] as String?;
  String? get surnameValue => this.formValueMap[SurnameValueKey] as String?;
  String? get genderValue => this.formValueMap[GenderValueKey] as String?;
  String? get phoneNumberValue =>
      this.formValueMap[PhoneNumberValueKey] as String?;
  String? get dateofBirthValue =>
      this.formValueMap[DateofBirthValueKey] as String?;
  String? get referrerCodeValue =>
      this.formValueMap[ReferrerCodeValueKey] as String?;
  String? get emailValue => this.formValueMap[EmailValueKey] as String?;
  String? get confirmPasswordValue =>
      this.formValueMap[ConfirmPasswordValueKey] as String?;
  String? get nationalityIdValue =>
      this.formValueMap[NationalityIdValueKey] as String?;
  String? get passwordValue => this.formValueMap[PasswordValueKey] as String?;
  String? get channelIdValue => this.formValueMap[ChannelIdValueKey] as String?;
  String? get cSCSNUmberValue =>
      this.formValueMap[CSCSNUmberValueKey] as String?;
  String? get deviceTokenValue =>
      this.formValueMap[DeviceTokenValueKey] as String?;
  String? get maidenNameValue =>
      this.formValueMap[MaidenNameValueKey] as String?;
  String? get bvnValue => this.formValueMap[BvnValueKey] as String?;

  bool get hasFirstName => this.formValueMap.containsKey(FirstNameValueKey);
  bool get hasSurname => this.formValueMap.containsKey(SurnameValueKey);
  bool get hasGender => this.formValueMap.containsKey(GenderValueKey);
  bool get hasPhoneNumber => this.formValueMap.containsKey(PhoneNumberValueKey);
  bool get hasDateofBirth => this.formValueMap.containsKey(DateofBirthValueKey);
  bool get hasReferrerCode =>
      this.formValueMap.containsKey(ReferrerCodeValueKey);
  bool get hasEmail => this.formValueMap.containsKey(EmailValueKey);
  bool get hasConfirmPassword =>
      this.formValueMap.containsKey(ConfirmPasswordValueKey);
  bool get hasNationalityId =>
      this.formValueMap.containsKey(NationalityIdValueKey);
  bool get hasPassword => this.formValueMap.containsKey(PasswordValueKey);
  bool get hasChannelId => this.formValueMap.containsKey(ChannelIdValueKey);
  bool get hasCSCSNUmber => this.formValueMap.containsKey(CSCSNUmberValueKey);
  bool get hasDeviceToken => this.formValueMap.containsKey(DeviceTokenValueKey);
  bool get hasMaidenName => this.formValueMap.containsKey(MaidenNameValueKey);
  bool get hasBvn => this.formValueMap.containsKey(BvnValueKey);

  bool get hasFirstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey]?.isNotEmpty ?? false;
  bool get hasSurnameValidationMessage =>
      this.fieldsValidationMessages[SurnameValueKey]?.isNotEmpty ?? false;
  bool get hasGenderValidationMessage =>
      this.fieldsValidationMessages[GenderValueKey]?.isNotEmpty ?? false;
  bool get hasPhoneNumberValidationMessage =>
      this.fieldsValidationMessages[PhoneNumberValueKey]?.isNotEmpty ?? false;
  bool get hasDateofBirthValidationMessage =>
      this.fieldsValidationMessages[DateofBirthValueKey]?.isNotEmpty ?? false;
  bool get hasReferrerCodeValidationMessage =>
      this.fieldsValidationMessages[ReferrerCodeValueKey]?.isNotEmpty ?? false;
  bool get hasEmailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey]?.isNotEmpty ?? false;
  bool get hasConfirmPasswordValidationMessage =>
      this.fieldsValidationMessages[ConfirmPasswordValueKey]?.isNotEmpty ??
      false;
  bool get hasNationalityIdValidationMessage =>
      this.fieldsValidationMessages[NationalityIdValueKey]?.isNotEmpty ?? false;
  bool get hasPasswordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey]?.isNotEmpty ?? false;
  bool get hasChannelIdValidationMessage =>
      this.fieldsValidationMessages[ChannelIdValueKey]?.isNotEmpty ?? false;
  bool get hasCSCSNUmberValidationMessage =>
      this.fieldsValidationMessages[CSCSNUmberValueKey]?.isNotEmpty ?? false;
  bool get hasDeviceTokenValidationMessage =>
      this.fieldsValidationMessages[DeviceTokenValueKey]?.isNotEmpty ?? false;
  bool get hasMaidenNameValidationMessage =>
      this.fieldsValidationMessages[MaidenNameValueKey]?.isNotEmpty ?? false;
  bool get hasBvnValidationMessage =>
      this.fieldsValidationMessages[BvnValueKey]?.isNotEmpty ?? false;

  String? get firstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey];
  String? get surnameValidationMessage =>
      this.fieldsValidationMessages[SurnameValueKey];
  String? get genderValidationMessage =>
      this.fieldsValidationMessages[GenderValueKey];
  String? get phoneNumberValidationMessage =>
      this.fieldsValidationMessages[PhoneNumberValueKey];
  String? get dateofBirthValidationMessage =>
      this.fieldsValidationMessages[DateofBirthValueKey];
  String? get referrerCodeValidationMessage =>
      this.fieldsValidationMessages[ReferrerCodeValueKey];
  String? get emailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey];
  String? get confirmPasswordValidationMessage =>
      this.fieldsValidationMessages[ConfirmPasswordValueKey];
  String? get nationalityIdValidationMessage =>
      this.fieldsValidationMessages[NationalityIdValueKey];
  String? get passwordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey];
  String? get channelIdValidationMessage =>
      this.fieldsValidationMessages[ChannelIdValueKey];
  String? get cSCSNUmberValidationMessage =>
      this.fieldsValidationMessages[CSCSNUmberValueKey];
  String? get deviceTokenValidationMessage =>
      this.fieldsValidationMessages[DeviceTokenValueKey];
  String? get maidenNameValidationMessage =>
      this.fieldsValidationMessages[MaidenNameValueKey];
  String? get bvnValidationMessage =>
      this.fieldsValidationMessages[BvnValueKey];
}

extension Methods on FormViewModel {
  setFirstNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[FirstNameValueKey] = validationMessage;
  setSurnameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[SurnameValueKey] = validationMessage;
  setGenderValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[GenderValueKey] = validationMessage;
  setPhoneNumberValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PhoneNumberValueKey] = validationMessage;
  setDateofBirthValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[DateofBirthValueKey] = validationMessage;
  setReferrerCodeValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ReferrerCodeValueKey] = validationMessage;
  setEmailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[EmailValueKey] = validationMessage;
  setConfirmPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ConfirmPasswordValueKey] =
          validationMessage;
  setNationalityIdValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NationalityIdValueKey] = validationMessage;
  setPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PasswordValueKey] = validationMessage;
  setChannelIdValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ChannelIdValueKey] = validationMessage;
  setCSCSNUmberValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[CSCSNUmberValueKey] = validationMessage;
  setDeviceTokenValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[DeviceTokenValueKey] = validationMessage;
  setMaidenNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[MaidenNameValueKey] = validationMessage;
  setBvnValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[BvnValueKey] = validationMessage;
}
