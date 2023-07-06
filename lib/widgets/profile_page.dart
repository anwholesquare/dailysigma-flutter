import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dailysigma/widgets/button_box.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121421),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 28.w,
                right: 18.w,
                top: 36.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text("My Account",
                      style: GoogleFonts.poppins(textStyle: 
                        TextStyle(
                          color: Colors.white,
                          fontSize: 34.w,
                          fontWeight: FontWeight.bold))
                      )
                ],
              ),
            ),
            SizedBox(height: 30,),
            CircleAvatar(radius: (64),
              backgroundColor: Colors.white,
              child: ClipRRect(
                borderRadius:BorderRadius.circular(64),
                child: Image.asset("assets/pics/profilepic1.png"),
              )
            ),
            SizedBox(height: 20,),
            Text("Khandoker Kafi Anan", style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),textAlign: TextAlign.center,) ,
            Text("khandokeranan@gmail.com", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,) ,
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              FaIcon(FontAwesomeIcons.facebook,color: Colors.white, size: 32,),
              SizedBox(width: 20,),
              FaIcon(FontAwesomeIcons.twitter,color: Colors.white, size: 32,),
              SizedBox(width: 20,),
              FaIcon(FontAwesomeIcons.instagram,color: Colors.white, size: 32,),
              ],),
            SizedBox(height: 40,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 28.w,
                  ),
                  ButtonBox(
                    text: "Sign Out",
                    onPressed: (value) => print(value),
                  ),
                  ButtonBox(
                    text: "Share Profile",
                    onPressed: (value) => print(value),
                  ),
                ],
              ),
            ),
            
            
          ],
        ),
      ),
    );
  
  }
}
