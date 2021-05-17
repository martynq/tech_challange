import 'package:flutter/material.dart';
import 'package:flutter_country_code_picker/resources/colors.dart';

class CircleIconButton extends StatelessWidget {
  final double size;
  final double iconSize;
  final Function onPressed;
  final IconData icon;
  final bool isDark;

  const CircleIconButton({
    this.size = 30.0,
    this.iconSize = 25.0,
    this.icon,
    this.onPressed,
    this.isDark = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPressed,
      child: SizedBox(
        width: size,
        height: size,
        child: Stack(
          alignment: const Alignment(0.0, 0.0), // all centered
          children: <Widget>[
            Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.greyContainer,
              ),
              child: Icon(
                icon,
                size: iconSize,
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
