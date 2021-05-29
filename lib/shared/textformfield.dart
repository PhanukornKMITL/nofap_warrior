import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget textFormField(String hint, bool obsecure) => TextFormField(
                      style: TextStyle(color:  HexColor('#dddcdf')),
                      decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(15.0),
                            ),
                          ),
                          filled: true,
                          hintStyle: new TextStyle(color:  HexColor('#dddcdf')),
                          hintText: "$hint",
                          fillColor: HexColor('#20252b')),
                          obscureText: obsecure,
                    );