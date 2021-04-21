import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPageWidget extends StatefulWidget {
  FirstPageWidget({Key key}) : super(key: key);

  @override
  _FirstPageWidgetState createState() => _FirstPageWidgetState();
}

class _FirstPageWidgetState extends State<FirstPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, 0),
              child: Image.asset(
                'assets/images/Frame 3.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment(0, 0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0x46FFFFFF),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment(0, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 120),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment(0, 1),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Зарегистрироваться',
                              options: FFButtonOptions(
                                width: 300,
                                height: 55,
                                color: Color(0xFF407BFF),
                                textStyle: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
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
                        ),
                      ),
                      Align(
                        alignment: Alignment(0, -0.05),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Вход',
                          options: FFButtonOptions(
                            width: 300,
                            height: 55,
                            color: Color(0xFF407BFF),
                            textStyle: GoogleFonts.getFont(
                              'Roboto',
                              color: Color(0xFFFAFAFA),
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 2,
                            ),
                            borderRadius: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, -0.65),
              child: Image.asset(
                'assets/images/Frame 3.png',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
