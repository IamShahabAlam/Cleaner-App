import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Indicator extends StatelessWidget {
  Indicator({this.color, this.name, this.size});

  final Color color;
  final String name, size;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 9.r,
        ),
        SizedBox(
          width: 6.w,
        ),
        Text(
          name,
          style: TextStyle(
              fontSize: 12.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 4.w,
        ),
        Text(
          size,
          style: TextStyle(
              fontSize: 12.sp,
              color: Colors.grey[700],
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

// ===============================================================

class Page1List extends StatelessWidget {
  Page1List({this.name, this.size, this.icon});

  final IconData icon;
  final String name, size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 0.8.sw ,
      padding: EdgeInsets.symmetric(
        horizontal: 20.0.w,
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.black,
        ),
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(size),
        trailing: CheckBox(),
      ),
    );
  }
}

// ===============================================================

class Page2List extends StatefulWidget {
  Page2List({this.name, this.size, this.badge});

  // final IconData icon ;
  final String name, size, badge;

  @override
  _Page2ListState createState() => _Page2ListState();
}

class _Page2ListState extends State<Page2List> {

  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    return Container(
      // width: 0.8.sw ,
      padding: EdgeInsets.symmetric(
        horizontal: 20.0.w,
      ),
      child: PopupMenuButton(
        // padding: EdgeInsets.all(0.0),

        child: ListTile(
          leading: Icon(
            Icons.keyboard_arrow_down,
          ),
          title: Row(
            children: [
              Text(widget.name, style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(left: _w * 0.02),
                alignment: Alignment.center,
                height: _h * 0.022,
                width: _w * 0.065,
                decoration: BoxDecoration(
                  color: Colors.cyan.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Text(
                  widget.badge,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10.sp,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          subtitle: Text(widget.size),
          trailing: CheckBox(),
        ),

        itemBuilder: (context) => [
          PopupMenuItem(
            child: Container(
              width: _w,
              child: ListTile(
                leading: Icon(FontAwesomeIcons.whatsapp),
                title: Text("Whatsapp"),
                subtitle: Text("275 MB"),
                trailing: CheckBox(),
              ),
            ),
            value: 0,
          ),
          PopupMenuItem(

              value: 1,
              child: ListTile(
                leading: Icon(FontAwesomeIcons.chrome),
                title: Text("Chrome"),
                subtitle: Text("198 MB"),
                trailing: CheckBox(),
              )
          ),
          PopupMenuItem(
              value: 2,
              child: ListTile(
                leading: Icon(FontAwesomeIcons.facebook),
                title: Text("Facebook"),
                subtitle: Text("645 MB"),
                trailing: CheckBox(),
              )),
        ],
      ),
    );
  }
}

// ===============================================================

class CheckBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RoundCheckBox(
      size: 30.0.r,
      checkedColor: Colors.cyan,
      uncheckedColor: Colors.white,
      checkedWidget: Icon(
        Icons.radio_button_checked_outlined,
        color: Colors.white,
        size: 18.sp,
      ),
      border: Border.all(width: 1.2.sp, color: Colors.grey),
      onTap: (selected) {},
    );
  }
}

// ===============================================================
