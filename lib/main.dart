import 'package:cleaner/Page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'components.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(400, 680),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Page1(),
      ),
    );
  }
}




class Page1 extends StatefulWidget {
@override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {

    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        leadingWidth: 100.w,
        iconTheme: IconThemeData(color: Colors.black, size: 25.sp),
        elevation: 0,
        backgroundColor: Color(0x00000000),
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          SizedBox(
            width: 25.w,
          ),
          Icon(Icons.refresh),
          SizedBox(
            width: 25.w,
          ),
          GestureDetector(
            onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => Page2())); },
            child: Icon(Icons.menu),
          ),
          SizedBox(
            width: 25.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Center(
              child: Container(
                margin: EdgeInsets.only(top: 10.h),
                // padding: EdgeInsets.only(top: 10.h),
                height: _h*0.16,
                width: _w*0.55,
                // height: 130.0.h ,
                // width: 300.0.h ,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.cyan[700],
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: Offset(-12, 12))
                  ],
                  color: Color(0xfff2f4f7),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "1.31",
                          style: TextStyle(
                              fontSize: 35.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text("GB",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Cleanup Suggested",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[400]),
                    ),
                  ],
                ),
              ),
            ),

            RoundedProgressBar(
              height: 20.h,
              milliseconds: 1000,
              margin: EdgeInsets.only(
                  left: 50.h, right: 50.h, top: 50.h, bottom: 25.h),
              percent: 40.0,
              style: RoundedProgressBarStyle(
                borderWidth: 0,
                colorProgress: Colors.black,
                backgroundProgress: Colors.white,
                widthShadow: 85.w,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Indicator(
                  color: Colors.black,
                  name: "Used",
                  size: "18 GB",
                ),
                Indicator(
                  color: Colors.blue,
                  name: "System",
                  size: "9 GB",
                ),
                Indicator(
                  color: Colors.white,
                  name: "Free",
                  size: "5 GB",
                )
              ],
            ),

            Stack(
              children: [

                Align( alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 30.h),
                    alignment: Alignment.center,
                    height: 0.07.sh,
                    width: MediaQuery.of(context).size.width*0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
                      color: Colors.black,
                    ),
                    child: Text("Can be deleted", style: TextStyle(color: Colors.grey,fontSize: 17.sp, fontWeight: FontWeight.bold),),
                  ),
                ),

                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 77.0.h),
                    width: double.infinity,

                    decoration: BoxDecoration(
                      color: Color(0xfff2f4f7),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(60.0.r)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 10.0.h,),
                        Page1List(name: "Junk caches", size: "1.31 GB", icon: Icons.cleaning_services ,),
                        Page1List(name: "App Data", size: "3.22 GB", icon: Icons.apps ,),
                        Page1List(name: "Audio & Video", size: "0.65 GB", icon: Icons.audiotrack ,),

                        SizedBox(
                          height: 0.06.sh,
                          width: 0.43.sw,
                          child: ElevatedButton(
                            onPressed: (){
                              Fluttertoast.showToast(
                                msg: "Cleanup will not effect normal use",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: Colors.grey[700],
                                textColor: Color(0xffebebf5),
                                fontSize: 16.sp,

                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.cyan[200],
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),

                            ),
                            child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.restore_from_trash, color: Colors.blue,),
                                Text("Cleaning 1.31 GB" , style: TextStyle(color: Colors.blue),),
                              ],),
                          ),
                        ),
                        SizedBox(height: 0.015.sh,)
                      ],
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 48.h , left: MediaQuery.of(context).size.width*0.58
                  ),
                  height: 50.h,
                  width: MediaQuery.of(context).size.width*0.28,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Text("32 GB" ,style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Colors.white),),

                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}

