import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppContainer extends StatelessWidget {
  final Widget? child;
  final Color  color;
  final double width;
  final double height;

  const AppContainer({
    Key? key,
    this.child,
    required this.color,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0)),
      child: child,
    );
  }
}

class AppButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final Widget child;
  final Color? backgroundColor;
  final Color borderColor;
  final double borderWidth;
  // final double width;
  // final double height;
  const AppButton({
    Key? key,
    required this.onTap,
    required this.child,
    // required this.width,
    // required this.height,
    this.backgroundColor,
    this.borderColor = AppColor.primaryColor,
    this.borderWidth = 2.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onTap,
      style: FilledButton.styleFrom(
          //minimumSize: const Size(double.infinity, 60),
          backgroundColor: backgroundColor != null
              ? Colors.transparent
              : Colors.white,
          surfaceTintColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
          )),
      child: child,
    );
  }
}

// Header text
class SecondaryText extends StatelessWidget {
  final Color? color;
  final String text;
  final double? size;
  TextOverflow overflow;
  FontWeight? fontWeight;
  TextAlign? textAlign;
  SecondaryText({Key? key,
    this.color = AppColor.primaryColor,
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.size,
    this.fontWeight = FontWeight.bold,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
          text,
          textAlign: textAlign,
          style: GoogleFonts.poppins(
            color: color,
            fontSize: size,
            fontWeight: fontWeight,
          ),
    );
  }
}


class PrimaryText extends StatelessWidget {
  final Color? color;
  final String text;
  final double? size;
  TextOverflow overflow;
  FontWeight? fontWeight;
  TextAlign? textAlign;
  PrimaryText({Key? key,
    this.color = AppColor.primaryColor,
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.size,
    this.fontWeight = FontWeight.normal,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}

class AppColor {
  static const Color primaryColor = Color(0x77153302);
  static const Color secondaryColor = Color(0xe5eef6e8);
  static const Color extraColor = Color(0xffbad3a8);
  // static LinearGradient colorgradient = const LinearGradient(
  //   begin: Alignment.topRight,
  //   end: Alignment.bottomLeft,
  //   colors: [
  //     Color(0xffa800ff),
  //     Color(0xff2b62ff),
  //   ],
  // );
}
