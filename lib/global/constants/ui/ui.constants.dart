// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:rapiddoreproject/global/dimensions/dimensions.dart';
import '../../styles/colors.dart';

class UIConstants {
  //*---------------------------------------------------------------- ( Loader )
  Widget loader({double size = 60, Color color = kWhite}) {
    return LoadingAnimationWidget.newtonCradle(
      size: size,
      color: color,
    );
  }
  //*---------------------------------------------------------------- ( Loader )

  //*---------------------------------------------------------------- ( Button Loader )
  Widget buttonlLoader({double size = 60, Color color = kWhite}) {
    return LoadingAnimationWidget.threeArchedCircle(
      size: size,
      color: color,
    );
  }
  //*---------------------------------------------------------------- ( Button Loader )

  //*---------------------------------------------------------------- ( Svg_Icon )
  Widget svgIcon({
    required double wd,
    required double ht,
    required String assetImage,
    Color? color,
  }) {
    return SizedBox(
      height: ht,
      width: wd,
      child: SvgPicture.asset(
        assetImage,
        color: color,
      ),
    );
  }

  //*---------------------------------------------------------------- (Transparent_Button)
  TextButton transparentButton(
      {required Widget style,
      bool apiCalling = false,
      required void Function()? onPressed,
      MaterialTapTargetSize? tapTargetSize,
      MaterialStateProperty<Size?>? minimumSize,
      MaterialStateProperty<EdgeInsetsGeometry?>? padding,
      MaterialStateProperty<Color?> overlayColor =
          const MaterialStatePropertyAll(kTrans)}) {
    return TextButton(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: kRadius10)),
            padding: padding,
            minimumSize: minimumSize,
            overlayColor: overlayColor,
            tapTargetSize: tapTargetSize),
        onPressed: onPressed,
        child: style);
  }

  //*---------------------------------------------------------------- (Transparent_Button)
  TextButton roundedButton(
      {required Widget child,
      Color? bdrClr = kGreen,
      bool apiCalling = false,
      required void Function()? onPressed,
      MaterialTapTargetSize? tapTargetSize,
      MaterialStateProperty<Size?>? minimumSize,
      MaterialStateProperty<Color?>? backgroundColor,
      MaterialStateProperty<EdgeInsetsGeometry?>? padding,
      MaterialStateProperty<Color?> overlayColor =
          const MaterialStatePropertyAll(kTrans)}) {
    return TextButton(
        style: ButtonStyle(
            backgroundColor: backgroundColor,
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            side: MaterialStatePropertyAll(BorderSide(color: bdrClr!)),
            padding: padding,
            minimumSize:
             minimumSize,
            overlayColor: overlayColor,
            tapTargetSize: tapTargetSize),
        onPressed: onPressed,
        child: apiCalling ? loader() : child);
  }


}
