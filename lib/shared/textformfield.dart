import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

InputDecoration textFormFieldDecoration = InputDecoration(
      filled: true,
      hintStyle:  TextStyle(color:  HexColor('#dddcdf'), fontFamily: 'uni-sans'),
      fillColor: HexColor('#20252b'),
      border:  OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(15.0),
        ),
      )
      );

// TextFormField(
//   style: TextStyle(color:  HexColor('#dddcdf')),
//   decoration: new InputDecoration(
//       border: new OutlineInputBorder(
//         borderRadius: const BorderRadius.all(
//           const Radius.circular(15.0),
//         ),
//       ),
//       filled: true,
//       hintStyle: new TextStyle(color:  HexColor('#dddcdf')),
//       hintText: "$hint",
//       fillColor: HexColor('#20252b')),
//       obscureText: obsecure,
// );
