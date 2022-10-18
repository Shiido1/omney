import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

pickDate(
    {@required BuildContext? context,
    @required ValueChanged<String>? onChange}) async {
  final ThemeData theme = Theme.of(context!);
  switch (theme.platform) {
    case TargetPlatform.android:
    case TargetPlatform.fuchsia:
    case TargetPlatform.linux:
    case TargetPlatform.windows:
      return _buildMaterialDatePicker(context: context, date: onChange);
    case TargetPlatform.macOS:
      return _buildCupertinoDatePicker;
    case TargetPlatform.iOS:
      return _buildCupertinoDatePicker(context: context, date: onChange);
  }
}

/// This builds material date picker in Android
void _buildMaterialDatePicker(
    {@required BuildContext? context, @required var date}) async {
  final DateTime? picked = await showDatePicker(
    context: context!,
    initialDate: DateTime.now(),
    firstDate: DateTime(1960),
    lastDate: DateTime(2095),
    builder: (context, child) {
      return Theme(
        data: ThemeData.light(),
        child: child!,
      );
    },
  );
  if (picked != null && picked != date) {
    date(DateFormat('yyyy-MM-dd').format(picked));
  }
}

/// This builds cupertino date picker in iOS
void _buildCupertinoDatePicker(
    {@required BuildContext? context, @required var date}) {
  showModalBottomSheet(
      context: context!,
      builder: (BuildContext builder) {
        return Theme(
            data: ThemeData.light(),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: DateTime(1969, 1, 1),
                backgroundColor: Theme.of(context).cardColor,
                onDateTimeChanged: (picked) {
                  if (picked != date) {
                    date(DateFormat('yyyy-MM-dd').format(picked));
                  }
                },
              ),
            ));
      });
}
