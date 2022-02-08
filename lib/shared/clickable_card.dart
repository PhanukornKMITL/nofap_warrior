import 'package:flutter/material.dart';

Widget clickableCard(
        Icon icon, String title, String subtitle, Function callback) =>
    GestureDetector(
      onTap: callback,
      child: Container(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: icon,
                  title: Text(
                    "$title",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('$subtitle'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
