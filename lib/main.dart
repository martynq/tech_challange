import 'package:flutter/material.dart';
import 'package:flutter_country_code_picker/circle_button.dart';
import 'package:flutter_country_code_picker/models/country_code.dart';
import 'package:flutter_country_code_picker/resources/colors.dart';

import 'phone_number_step_2_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Country Code',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          leading: CircleIconButton(icon: Icons.chevron_left, ),
            shadowColor: AppColors.white,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: PhoneNumberStep2Screen(countriesList: countriesList,),
        ),
      ),
    );
  }
}
