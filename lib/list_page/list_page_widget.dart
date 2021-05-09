import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_dream/auth/auth.dart';
import 'package:my_dream/credit_page/credit_page_widget.dart';
import 'package:my_dream/flutter_flow/flutter_flow_widgets.dart';
import 'package:my_dream/login/login_widget.dart';
import 'package:my_dream/profile/profile_widget.dart';
import 'package:my_dream/nav.dart';
import 'package:provider/provider.dart';
import '../const.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListPageWidget extends StatefulWidget {
  ListPageWidget({Key key}) : super(key: key);

  @override
  _ListPageWidgetState createState() => _ListPageWidgetState();
}

class _ListPageWidgetState extends State<ListPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // appBar: AppBar(
      //   backgroundColor: Color(0xFF407BFF),
      //   automaticallyImplyLeading: false,
      //   actions: [
      //     Row(
      //       mainAxisSize: MainAxisSize.max,
      //       children: [
      //         Padding(
      //           padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
      //           child: GestureDetector(
      //             onTap: (){
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                       builder: (context) => ProfileWidget()),
      //                 );
      //               },
      //               child: Container(
      //               width: 120,
      //               height: 120,
      //               clipBehavior: Clip.antiAlias,
      //               decoration: BoxDecoration(
      //                 shape: BoxShape.circle,
      //               ),
      //               child: Image.asset(
      //                 'assets/images/ava.png',
      //               ),
      //             ),
      //           ),
      //         )
      //       ],
      //     )
      //   ],
      //   centerTitle: false,
      //   elevation: 4,
      // ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 16, 0, 0),
                  child: Text(
                    'Список банков',
                    style: FlutterFlowTheme.bodyText2.override(
                      fontFamily: 'Montserrat',
                      color: Color(0xFF8B97A2),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CreditPageWidget(title: 'Kaspi.kz', id: 0)),
                );
              },
                child: Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  alignment: Alignment(0, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment(-0.1, -0.5),
                                child: Text(
                                  'Kaspi.kz',
                                  style: FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF15212B),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment(2.64, 0.55),
                                child: Text(
                                  'до 15 000 000 ₸',
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF8B97A2),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Align(
                            alignment: Alignment(1, 0),
                            child: Container(
                              width: 40,
                              height: 40,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/Frame 3.png',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment(0.05, 0),
                            child: Icon(
                              Icons.chevron_right,
                              color: Color(0xFF95A1AC),
                              size: 28,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CreditPageWidget(title: 'Nurbank', id: 1)),
                );
              },
                child: Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  alignment: Alignment(0, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment(-0.1, -0.5),
                                child: Text(
                                  'Nurbank',
                                  style: FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF15212B),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment(2.64, 0.55),
                                child: Text(
                                  'до 150 000 000 ₸',
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF8B97A2),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Align(
                            alignment: Alignment(1, 0),
                            child: Container(
                              width: 40,
                              height: 40,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/nur.png',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment(0.05, 0),
                            child: Icon(
                              Icons.chevron_right,
                              color: Color(0xFF95A1AC),
                              size: 28,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CreditPageWidget(title: 'Sberbank', id: 2)),
                );
              },
                child: Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  alignment: Alignment(0, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment(-0.1, -0.5),
                                child: Text(
                                  'Sberbank',
                                  style: FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF15212B),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment(2.64, 0.55),
                                child: Text(
                                  'до 6 000 000 ₸',
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF8B97A2),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Align(
                            alignment: Alignment(1, 0),
                            child: Container(
                              width: 40,
                              height: 40,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/social-ru.png',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment(0.05, 0),
                            child: Icon(
                              Icons.chevron_right,
                              color: Color(0xFF95A1AC),
                              size: 28,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreditPageWidget(title: 'Halyk Bank', id: 3)),
                  );
                },
                child: Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  alignment: Alignment(0, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment(-0.1, -0.5),
                                child: Text(
                                  'Halyk Bank',
                                  style: FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF15212B),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment(2.64, 0.55),
                                child: Text(
                                  'до 300 000 000 ₸',
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF8B97A2),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Align(
                            alignment: Alignment(1, 0),
                            child: Container(
                              width: 40,
                              height: 40,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/icon.png',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment(0.05, 0),
                            child: Icon(
                              Icons.chevron_right,
                              color: Color(0xFF95A1AC),
                              size: 28,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FFButtonWidget(
                onPressed: () {
                  auth.signOut().then((value){
                    AppConstants.isLoged = false;
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginWidget()),
                    );
                  });
                  
                },
                text: 'Выйти',
                options: FFButtonOptions(
                  width: 300,
                  height: 55,
                  color: Colors.redAccent,
                  textStyle: GoogleFonts.getFont(
                    'Roboto',
                    color: Color(0xFFFAFAFA),
                    fontSize: 18,
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 2,
                  ),
                  borderRadius: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
