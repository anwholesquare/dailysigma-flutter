import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dailysigma/detail_page.dart';
import 'package:dailysigma/icons.dart';
import 'package:dailysigma/widgets/category_boxes.dart';
import 'package:dailysigma/widgets/news_card.dart';
import 'package:dailysigma/widgets/svg_asset.dart';


class ChartsPage extends StatelessWidget {
  const ChartsPage({Key? key}) : super(key: key);

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
                 Text("My Feed",
                      style: GoogleFonts.poppins(textStyle: 
                        TextStyle(
                          color: Colors.white,
                          fontSize: 34.w,
                          fontWeight: FontWeight.bold))
                      ),InkWell(
                    borderRadius: BorderRadius.circular(360),
                    onTap: onSearchIconTapped,
                    child: Container(
                      height: 35.w,
                      width: 35.w,
                      child: Center(
                        child: SvgAsset(
                          assetName: AssetName.heart,
                          height: 24.w,
                          width: 24.w,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120.h,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 28.w,
                  ),
                  CategoryBoxes(
                    text: "Insomnia",
                    onPressed: (value) => print(value),
                  ),
                  CategoryBoxes(
                    text: "Depression",
                    onPressed: (value) => print(value),
                  ),
                  CategoryBoxes(
                    text: "Baby Sleep",
                    onPressed: (value) => print(value),
                  ),
                  CategoryBoxes(
                    text: "Insomnia",
                    onPressed: (value) => print(value),
                  ),
                ],
              ),
            ),
            
            
            Padding(
              padding: EdgeInsets.only(
                left: 28.w,
                right: 18.w,
                top: 5.w,
              ),
              child: NewsCard(
                      tag: "sleepMeditation",
                      onTap: onSeeAllTapped,
                      title: "Am I the Body?",
                      subtitle: "The nature of the mind is such that it is looking for something to identify with.",
                      
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                left: 28.w,
                right: 18.w,
                top: 20.w,
              ),
              child: NewsCard(
                      tag: "sleepMeditation",
                      onTap: onSeeAllTapped,
                      title: "Ways to Enhance Creativity",
                      subtitle: "Sadhguru defines creativity, explains where creativity comes",
                      gradientStartColor: Color(0xff13DEA0),
                      gradientEndColor: Color(0xff06B782),
              ),
            ),
          ],
        ),
      ),
    );
  
  }

  void onSeeAllTapped() {
  }

  void onSleepMeditationTapped() {
    Get.to(()=> DetailPage(), transition: Transition.rightToLeft);
  }

  void onDepressionHealingTapped() {
  }

  void onSearchIconTapped() {
  }
}
