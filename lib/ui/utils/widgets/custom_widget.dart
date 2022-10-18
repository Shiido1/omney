import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:omney/ui/utils/widgets/button_widget.dart';
import 'package:omney/ui/utils/widgets/text_view.dart';
import '../color/app_color_utils.dart';

showDialogWidget(BuildContext context) {
  AlertDialog alertDialog = AlertDialog(
    title: const TextView(text: ''),
    content: Column(
      children: const [
        TextView(
          text:
              'If your email exists on our platform, we would send you a mail with instructions to reset your password.',
          fontSize: 16,
        ),
        SizedBox(
          height: 15,
        ),
        ButtonWidget(
          width: 180,
          text: 'Back',
          color: AppColor.white,
        )
      ],
    ),
  );
  showDialog(context: context, builder: ((context) => alertDialog));
}

void showCustomDialog(BuildContext context,
    {String? title,
    required List<String> items,
    required Function(String value)? onTap}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomDialogBox(
          title: title,
          items: items,
          onTap: onTap,
        );
      });
}

// ignore: must_be_immutable
class CustomDialogBox extends StatelessWidget {
  final String? title;
  final List<String> items;
  // ignore: prefer_typing_uninitialized_variables
  var onTap;

  // ignore: use_key_in_widget_constructors
  CustomDialogBox(
      {Key? key, this.title, required this.items, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextView(
              text: title ?? '',
            ),
            ...items.map((item) => SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CupertinoButton(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.zero,
                      child: TextView(
                        text: item,
                        fontSize: 17,
                        color: AppColor.black,
                        fontWeight: FontWeight.w500,
                      ),
                      onPressed: () {
                        onTap!(item);
                      }),
                ))
          ],
        ),
      ),
    );
  }
}
