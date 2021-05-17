import 'package:flutter/material.dart';
import 'package:flutter_country_code_picker/resources/font.dart';

class CountryCodePicker extends StatelessWidget {
  final String title;
  final String flag;
  final VoidCallback onTap;

  const CountryCodePicker({Key key, this.title, this.flag, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              child: Tab(
                icon: Image(
                  image: AssetImage(
                    flag,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: SizedBox(
              child: Text(
                title,
                style: AppFonts.poppins15GreyW600,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: SizedBox(
              child: Icon(
                Icons.navigate_next,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
