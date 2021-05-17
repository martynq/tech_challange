import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_country_code_picker/resources/colors.dart';
import 'package:flutter_country_code_picker/resources/font.dart';

class ButtonWithText extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final int maxLines;
  final TextOverflow overflow;
  final double fontSize;
  final double width;
  final bool isButtonEnable;

  const ButtonWithText({
    Key key,
    @required this.title,
    this.onPressed,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
    this.fontSize,
    this.width,
    this.isButtonEnable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.93,
      child: CupertinoButton(
        disabledColor: AppColors.green.withOpacity(0.5),
        color: AppColors.green,
          borderRadius: BorderRadius.circular(14.0),
        child: Text(title, style: AppFonts.poppins15White),
        onPressed: isButtonEnable == true ? onPressed : null,
      ),
    );
  }
}
