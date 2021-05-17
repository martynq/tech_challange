import 'package:flutter/material.dart';
import 'package:flutter_country_code_picker/country_code_picker.dart';
import 'package:flutter_country_code_picker/models/country_code.dart';
import 'package:flutter_country_code_picker/resources/colors.dart';
import 'package:flutter_country_code_picker/resources/font.dart';
import 'package:flutter_country_code_picker/resources/strings.dart';
import 'package:flutter_country_code_picker/send_button.dart';

import 'country_picker_modal_sheet.dart';

class PhoneNumberStep2Screen extends StatefulWidget {
  final List<CountryCode> countriesList;

  const PhoneNumberStep2Screen({
    Key key,
    this.countriesList,
  }) : super(key: key);

  @override
  _PhoneNumberStep2ScreenState createState() => _PhoneNumberStep2ScreenState();
}

class _PhoneNumberStep2ScreenState extends State<PhoneNumberStep2Screen> {
  final number = TextEditingController();
  CountryCode countryCode;
  bool isButtonEnable;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 62),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  CountryCodeScreenStrings.step2,
                  style: AppFonts.poppins15Yellow,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 62),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  CountryCodeScreenStrings.phoneNumber,
                  style: AppFonts.poppins25,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 62),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 300,
                  child: Text(
                    CountryCodeScreenStrings.smsFromCarbonara,
                    style: AppFonts.poppins15Grey,
                    maxLines: 2,
                    softWrap: true,
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 78.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 3,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.greyPepperWithOpacity,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: buildSingleCountry(),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  flex: 5,
                  child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.greyPepperWithOpacity,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        onChanged: (number) {
                          if (number != null && number.length >= 9) {
                            setState(() {
                              isButtonEnable = true;
                            });
                          } else {
                            setState(() {
                              isButtonEnable = false;
                              return 'Number has to have 9 digits';
                            });
                          }
                          return '';
                        },
                        autocorrect: true,
                        autofocus: true,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 12.5),
                            hintText: CountryCodeScreenStrings.phoneNumber,
                            hintStyle: AppFonts.poppins15GreyWithOpacity),
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: SizedBox(
              height: 105,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18, right: 18),
            child: ButtonWithText(
              onPressed: () {},
              isButtonEnable: isButtonEnable,
              title: CountryCodeScreenStrings.sendCode,
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }

  Widget buildSingleCountry() {
    final onTap = () async {
      final selectedCountryCode = await showModalBottomSheet(
        context: context,
        barrierColor: Colors.transparent,
        backgroundColor: Colors.white,
        enableDrag: true,
        isScrollControlled: true,
        isDismissible: true,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: AppColors.greyPepper.withOpacity(0.2),
          ),
          borderRadius: BorderRadius.vertical(top: Radius.circular(13.0)),
        ),
        builder: (builder) => CountryPickerModalSheet(
          countriesList: widget.countriesList,
          selectedCountry: countryCode ?? widget.countriesList[0],
        ),
      );
      if (selectedCountryCode == null) return;
      setState(() {
        this.countryCode = selectedCountryCode;
      });
    };
    return countryCode == null
        ? CountryCodePicker(
            flag: widget.countriesList[0].flag,
            title: widget.countriesList[0].countryCode,
            onTap: onTap)
        : CountryCodePicker(
            flag: countryCode.flag,
            title: countryCode.countryCode,
            onTap: onTap);
  }
}
