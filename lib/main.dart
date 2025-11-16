
import 'package:first_project_dada_garments/register_screen.dart';
import 'package:first_project_dada_garments/spelash_screen.dart';
import 'package:flutter/material.dart';

import 'Home_screen.dart';
import 'category_screen.dart';
import 'discount_screen.dart';
import 'login_screen.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiscountScreen(),
    )
  );
}