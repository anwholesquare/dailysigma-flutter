import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dailysigma/detail_page.dart';
import 'package:dailysigma/icons.dart';
import 'package:dailysigma/widgets/discover_card.dart';
import 'package:dailysigma/widgets/discover_small_card.dart';
import 'package:dailysigma/widgets/svg_asset.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
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
                  Text("Daily Sigma",
                      style: GoogleFonts.poppins(textStyle: 
                        TextStyle(
                          color: Colors.white,
                          fontSize: 34.w,
                          fontWeight: FontWeight.bold))
                      ),
                  InkWell(
                    borderRadius: BorderRadius.circular(360),
                    onTap: onSearchIconTapped,
                    child: Container(
                      height: 35.w,
                      width: 35.w,
                      child: Center(
                        child: SvgAsset(
                          assetName: AssetName.search,
                          height: 24.w,
                          width: 24.w,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   height: 120.h,
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       SizedBox(
            //         width: 28.w,
            //       ),
            //       CategoryBoxes(
            //         text: "Insomnia",
            //         onPressed: (value) => print(value),
            //       ),
            //       CategoryBoxes(
            //         text: "Depression",
            //         onPressed: (value) => print(value),
            //       ),
            //       CategoryBoxes(
            //         text: "Baby Sleep",
            //         onPressed: (value) => print(value),
            //       ),
            //       CategoryBoxes(
            //         text: "Insomnia",
            //         onPressed: (value) => print(value),
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Cards",
                    style: TextStyle(
                        color: Color(0xff515979),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.w),
                  ),
                  GestureDetector(
                      onTap: onSeeAllTapped,
                      child: Text("Learn More",
                          style: TextStyle(
                              color: Color(0xff4A80F0),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.w)))
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              height: 176.w,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 28.w),
                  DiscoverCard(
                    tag: "sleepMeditation",
                    onTap: onSleepMeditationTapped,
                    title: "Overcoming Fear",
                    subtitle: "Your fear is always about what’s going to happen next.",
                  ),
                  SizedBox(width: 20.w),
                  DiscoverCard(
                    onTap: onDepressionHealingTapped,
                    title: "Is Marriage the Right Path?",
                    subtitle: "In the Presence of the Master",
                    gradientStartColor: Color(0xffFC67A7),
                    gradientEndColor: Color(0xffF6815B),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28.h),
            Padding(
              padding: EdgeInsets.only(left: 28.w),
              child: Text(
                "Categories",
                style: TextStyle(
                    color: Color(0xff515979),
                    fontWeight: FontWeight.w500,
                    fontSize: 14.w),
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 28.w),
              child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 19.w, mainAxisExtent:  125.w, mainAxisSpacing: 19.w),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  DiscoverSmallCard(
                    onTap: (){},
                    title: "Discipline",
                    gradientStartColor: Color(0xff13DEA0),
                    gradientEndColor: Color(0xff06B782),
                    icon:    SizedBox( height: 48.w, width: 48.w, child: Image.asset('assets/icons/discipline1.png', )),
                  ),
                  DiscoverSmallCard(
                    onTap: (){},
                    title: "Workout",
                    gradientStartColor: Color(0xffFC67A7),
                    gradientEndColor: Color(0xffF6815B),
                    icon:    SizedBox( height: 48.w, width: 48.w, child: Image.asset('assets/icons/workout1.png', )),
                  ),
                  DiscoverSmallCard(
                    onTap: (){
                    },
                    title: "Mindset",
                    gradientStartColor: Color(0xffFFD541),
                    gradientEndColor: Color(0xffF0B31A),
                    icon:    SizedBox( height: 48.w, width: 48.w, child: Image.asset('assets/icons/mindset1.png', )),
      
                  ),
                  DiscoverSmallCard(
                    onTap: (){
                      Get.snackbar("Daily Sigma", "Please wait for the upcoming services",
    colorText: Colors.white);
                    },
                    title: "Cashflow",
                    icon:    SizedBox( height: 48.w, width: 48.w, child: Image.asset('assets/icons/cashflow1.png', )),
                  ),
                ],

              ),
            )
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
