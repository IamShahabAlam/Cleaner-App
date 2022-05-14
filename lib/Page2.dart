import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'components.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';

class Page2 extends StatefulWidget {

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
        leading: GestureDetector(
          onTap: (){ Navigator.pop(context); },
            child: Icon(Icons.arrow_back_ios)

        ),
        actions: [
          SizedBox(
            width: 25.w,
          ),
          Icon(Icons.refresh),
          SizedBox(
            width: 25.w,
          ),
          GestureDetector(
            onTap: (){},
            child: Icon(Icons.menu),
          ),
          SizedBox(
            width: 25.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [

            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: _h*0.114),
                width: double.infinity,
                height: _h*0.762,

                decoration: BoxDecoration(
                  color: Color(0xfff2f4f7),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(60.0.r)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 10.0.h,),
                    Page2List(name: "Background Apps", size: "672 MB", badge: "3",),
                    Page2List(name: "App junk files", size: "217 MB", badge: "6",),
                    Page2List(name: "App Caches", size: "435 MB", badge: "9",),


                    Container(
                      margin: EdgeInsets.only(top: _h*0.2),
                      height: _h*0.06,
                      width: _w*0.43,
                      child: ElevatedButton(
                        onPressed: (){
                          Fluttertoast.showToast(
                            msg: "Cleanup will not effect normal use",
                            fontSize: 16.sp,
                            textColor: Colors.grey[700],
                            backgroundColor: Color(0xffebebf5),
                            gravity: ToastGravity.SNACKBAR,
                            toastLength: Toast.LENGTH_SHORT,

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
                    SizedBox(height: 0.015.sh,),

                  ],
                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: _h*0.08 , left: _w*0.58
              ),
              height: _h*0.075,
              width: _w*0.28,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Text("1.31 GB" ,style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Colors.white),),

            ),

            Align( alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(top: _h*0.016),
                alignment: Alignment.center,
                height: _h*0.1,
                width: _w*0.47,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
                  color: Colors.black,
                ),
                child: Text("Junk Caches", style: TextStyle(color: Colors.grey,fontSize: 24.sp, fontWeight: FontWeight.bold),),
              ),
            ),





          ],
        ),
      ),
    );
  }
}
