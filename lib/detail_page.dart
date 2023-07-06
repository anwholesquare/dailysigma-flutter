import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:dailysigma/icons.dart';
import 'package:dailysigma/widgets/svg_asset.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool? isHeartIconTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121421),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: 66.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Hero(
                  tag: "sleepMeditation",
                    child: Material(
                      color: Colors.transparent,
                      child: Text("Overcoming Fear",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 34.w,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Text(
                    "Your fear is always about what’s going to happen next.",
                    style: TextStyle(
                        color: Color(0xffffffff).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w),
                  ),
                ),
                SizedBox(height: 25.h),
                SizedBox(
                  height: 279.w,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 28.w),
                      Container(
                        height: 280.w,
                        width: 280.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/pics/pic1.png"),
                          ),
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Container(
                        height: 280.w,
                        width: 280.w,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/pics/pic2.jpg",
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 32.h),
                // Padding(
                //   padding: EdgeInsets.only(left: 28.w),
                //   child: Row(
                //     children: [
                //       Container(
                //         height: 56.w,
                //         width: 56.w,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(10),
                //           color: Colors.white.withOpacity(0.1),
                //         ),
                //         child: Center(
                //             child: SvgAsset(
                //                 assetName: AssetName.headphone,
                //                 height: 28.w,
                //                 width: 28.w)),
                //       ),
                //       SizedBox(width: 16.w),
                //       Container(
                //         height: 56.w,
                //         width: 56.w,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(10),
                //           color: Colors.white.withOpacity(0.1),
                //         ),
                //         child: Center(
                //             child: SvgAsset(
                //                 assetName: AssetName.tape,
                //                 height: 28.w,
                //                 width: 28.w)),
                //       ),
                //     ],
                //   ),
                // ),
                //SizedBox(height: 26.h),
                Padding(
                  padding: EdgeInsets.only(left: 28.w, right: 28.w, bottom: 80.h),
                  child: Text(
                    "Fear is simply because you are not living with life, you are living in your mind. Your fear is always about what’s going to happen next. That means your fear is always about that which does not exist. If your fear is about the non-existent, your fear is hundred percent imaginary. If you are suffering the non-existential, we call that insanity. So, people may be in just socially accepted levels of insanity, but if you’re afraid or if you’re suffering anything which does not exist, it amounts to insanity, isn’t it?",
                    style: TextStyle(
                        color: Color(0xffffffff).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w),
                  ),
                )
              ],
            ),

            Align(alignment: Alignment.topCenter,
            child:   Container(
              color:  Color(0xff121421),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 22.w,
                  right: 22.w,
                  top: 20.h,
                  bottom: 10.h
                ),
                child: Material(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(360),
                        onTap: onBackIconTapped,
                        child: Container(
                          height: 35.w,
                          width: 35.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                          ),
                          child: Center(
                            child: SvgAsset(
                              assetName: AssetName.back,
                              height: 20.w,
                              width: 20.w,
                            ),
                          ),
                        ),
                      ),


                      InkWell(
                        borderRadius: BorderRadius.circular(360),
                        onTap: onHeartIconTapped,
                        child: Container(
                          height: 35.w,
                          width: 35.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360)
                          ),
                          child: Center(
                            child: SvgAsset(
                              assetName: AssetName.heart,
                              height: 24.w,
                              width: 24.w,
                              color: isHeartIconTapped! ? Colors.red: Colors.white,
                            ),
                          ),
                        ),
                      ),




                    ],
                  ),
                ),
              ),
            )
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 87.h,
                decoration: BoxDecoration(
                  color: Colors.black,
                  gradient: LinearGradient(
                    stops: [0,1],
                    colors: [
                      Color(0xff121421),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                  )
                ),
                child: Center(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: onStartButtonPressed,
                      child: Ink(
                        decoration: BoxDecoration(
                          color: Color(0xff4A80F0),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Container(
                          height: 56.h,
                          width: 139.w,
                          child: Center(child: Text("Enroll", style: TextStyle(fontSize: 16.w, fontWeight: FontWeight.bold,color: Colors.white),)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }

  void onStartButtonPressed() {
    Get.snackbar("Daily Sigma", "The episodes are releasing soon on this app soon.",
    colorText: Colors.white);
  }

  void onBackIconTapped() {
   Get.back();
  }

  void onHeartIconTapped() {
    setState(() {
      isHeartIconTapped = !isHeartIconTapped!;
    });
  }
}
