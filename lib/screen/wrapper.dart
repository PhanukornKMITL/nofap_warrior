import 'package:flutter/material.dart';
import 'package:nofap_warriors/models/user.dart';
import 'package:nofap_warriors/screen/home/home.dart';
import 'package:nofap_warriors/screen/landing_page.dart';
import 'package:nofap_warriors/screen/register.dart';
import 'package:provider/provider.dart';

 class Wrapper extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     final user = Provider.of<MyUser>(context);
     print(user?.uid);

      if(user !=null){
        print('Hello');
        return HomePage();
      } else {
        print('Hi');
        return LandingPage();
      }
   }
 }