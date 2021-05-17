import 'package:flutter/material.dart';
import 'package:flutter_country_code_picker/circle_button.dart';
import 'package:flutter_country_code_picker/modal_sheet_country_list_tile.dart';
import 'package:flutter_country_code_picker/models/country_code.dart';
import 'package:flutter_country_code_picker/resources/colors.dart';
import 'package:flutter_country_code_picker/resources/font.dart';
import 'package:flutter_country_code_picker/resources/strings.dart';

class CountryPickerModalSheet extends StatelessWidget {
  final List<CountryCode> countriesList;
  final CountryCode selectedCountry;

  const CountryPickerModalSheet(
      {Key key, this.countriesList, this.selectedCountry})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(13.0),
          topRight: Radius.circular(13.0), // FLUTTER BUG FIX
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppColors.greyPepperWithOpacity,
            offset: Offset(0, 0),
            blurRadius: 5.0,
          ),
        ],
      ),
      height: MediaQuery.of(context).size.height * .80,
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Expanded(
                flex: 7,
                child: Text(
                  CountryCodeScreenStrings.countryCode,
                  style: AppFonts.poppins25,
                ),
              ),
              Expanded(
                flex: 1,
                child: Tab(
                  icon: SizedBox(
                    child: CircleIconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icons.close,
                    ),
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
              children: countriesList.map((country) {
                return ModalSheetCountryListItem(
                  selectedCountry: selectedCountry,
                  country: country,
                  onSelectedCountry: (CountryCode country) {
                    Navigator.pop(context, country);
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
