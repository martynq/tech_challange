import 'package:flutter/material.dart';
import 'package:flutter_country_code_picker/models/country_code.dart';
import 'package:flutter_country_code_picker/resources/colors.dart';
import 'package:flutter_country_code_picker/resources/font.dart';

class ModalSheetCountryListItem extends StatelessWidget {
  final CountryCode country;
  final CountryCode selectedCountry;
  final bool isSelected;
  final Function onSelectedCountry;

  const ModalSheetCountryListItem(
      {Key key,
      this.country,
      this.isSelected,
      this.onSelectedCountry,
      this.selectedCountry})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: country.countryName == selectedCountry.countryName
            ? AppColors.greyContainer
            : AppColors.white,
        padding: const EdgeInsets.only(right: 13.0),
        child: ListTile(
          selectedTileColor: AppColors.greyPepperWithOpacity,
          onTap: () => onSelectedCountry(country),
          leading: Tab(
            icon: Image(
              image: AssetImage(
                country.flag,
              ),
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            country.countryName,
            style: country.countryName == selectedCountry.countryName
                ? AppFonts.poppins15GreyW600
                : AppFonts.poppins15Grey,
          ),
          trailing: Text(
            country.countryCode,
            style: country.countryName == selectedCountry.countryName
                ? AppFonts.poppins15GreyW600
                : AppFonts.poppins15Grey,
          ),
        ),
      ),
    );
  }
}
