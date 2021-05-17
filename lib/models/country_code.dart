
import 'package:equatable/equatable.dart';

class CountryCode extends Equatable {
  final String flag;
  final String countryName;
  final String countryCode;

  CountryCode({
    this.flag,
    this.countryName,
    this.countryCode,
  });

  @override
  List<String> get props => [countryName];

}
 final CountryCode norway = CountryCode(flag: "assets/norway.png", countryName: 'Norway', countryCode: '+47');
 final CountryCode uk = CountryCode(flag: "assets/uk.png", countryName: 'U.K.', countryCode: '+44');
 final CountryCode us = CountryCode(flag: "assets/usa.png", countryName: 'U.S.', countryCode: '+01');
 final CountryCode france = CountryCode(flag: "assets/france.png", countryName: 'France', countryCode: '+43');
 final CountryCode espania = CountryCode(flag: "assets/espania.png", countryName: 'Espania', countryCode: '+41');
 final CountryCode svergia = CountryCode(flag: "assets/svergia.png", countryName: 'Svergia', countryCode: '+46');
 final CountryCode danmark = CountryCode(flag: "assets/denmark.png", countryName: 'Danmark', countryCode: '+48');
 final CountryCode italia = CountryCode(flag: "assets/italy.png", countryName: 'Italia', countryCode: '+42');
 final CountryCode portugal = CountryCode(flag: "assets/portugal.png", countryName: 'Portugal', countryCode: '+351');
 final CountryCode netherlands = CountryCode(flag: "assets/netherlands.png", countryName: 'Netherlands', countryCode: '+42');


final List<CountryCode> _countriesList = [
  norway,
  uk,
  us,
  france,
  espania,
  svergia,
  danmark,
  italia,
  portugal,
  netherlands,
];

 List<CountryCode> get countriesList => _countriesList;
