import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:omney/ui/utils/color/app_color_utils.dart';
import 'package:omney/ui/utils/widgets/text_view.dart';

class ButtonWidget extends StatelessWidget {
  final Function()? onTap;
  final bool? isThick;
  final double? height;
  final double? width;
  final String? text;
  final Color? color;
  final Color? colorGrey;
  final bool? loading;

  const ButtonWidget({
    Key? key,
    this.onTap,
    this.isThick = true,
    this.height,
    this.width,
    this.text,
    this.color,
    this.colorGrey,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: loading! ? null : onTap,
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: loading == true ? 40 : 48,
                vertical: loading == true ? 10 : 14),
            height: height,
            width: width,
            decoration: BoxDecoration(
                color: isThick! ? colorGrey : AppColor.blight,
                borderRadius: const BorderRadius.all(
                  Radius.circular(32),
                ),
                border: Border.all(
                  width: 1,
                  color: colorGrey??AppColor.primary,
                  style: BorderStyle.solid,
                )),
            child: Center(
              child: loading!
                  ? const SpinKitFadingCircle(
                      size: 32,
                      color: AppColor.blight,
                    )
                  : TextView(
                      text: text!,
                      color: color,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
            ),
          ),
        ));
  }
}
