import 'package:flutter/material.dart';

import 'flutter_flow/flutter_flow_theme.dart';
// import 'package:sto_app/core/const.dart';

Widget buildAppBar(String title) {
  return PreferredSize(
    preferredSize: Size.fromHeight(50.0),
    child: AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text(title,
          style: TextStyle(
              color: FlutterFlowTheme.primaryColor, //AppColors.mainTextColor,
              fontFamily: 'Montserrat Regular',
              fontSize: 18)),
      brightness: Brightness.light,
      automaticallyImplyLeading: true,
      backgroundColor: Colors.white,
      shadowColor: Colors.white,
      bottomOpacity: 1,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
  );
}
