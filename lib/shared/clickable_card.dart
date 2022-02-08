import 'package:flutter/material.dart';

Widget clickableCard(
        Icon icon, String title, String subtitle, Function callback, Color color) =>
    Container(
      child: Card(
        child: InkWell(
          highlightColor: color,
          onTap: callback,
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
