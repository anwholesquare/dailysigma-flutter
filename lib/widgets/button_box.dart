import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonBox extends StatefulWidget {
  final Function(bool isSelected)? onPressed;
  final String? text;

  const ButtonBox({Key? key, this.onPressed, this.text}) : super(key: key);

  @override
  State<ButtonBox> createState() => _CategoryBoxesState1();
}

class _CategoryBoxesState1 extends State<ButtonBox> {
  bool isSelected = false;


  @override
  Widget build(BuildContext context) {
    return   Center(
      child: GestureDetector(
        onTap: (){
         setState(() {
           isSelected = !isSelected;
           widget.onPressed!(isSelected);
         });
        },
        child: Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: Container(
            height: 48.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xff4A80F0),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff4A80F0).withOpacity(0.3),
                  offset: Offset(0,4),
                  blurRadius: 20
                ),
              ],
            ),
            child: Center(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 13.h),
                child: Text(widget.text!, style: TextStyle(color: Colors.white, fontSize:  17.sp, fontWeight: FontWeight.normal),),
              ),
            ),
          ),
        ),
      ),
    );
  }
}







