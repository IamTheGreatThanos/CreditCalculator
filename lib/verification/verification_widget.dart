import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_dream/list_page/list_page_widget.dart';
import '../appBar.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../main.dart';

class VerificationWidget extends StatefulWidget {
  VerificationWidget({Key key}) : super(key: key);

  @override
  _VerificationWidgetState createState() => _VerificationWidgetState();
}

class _VerificationWidgetState extends State<VerificationWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final auth = FirebaseAuth.instance;
  User user;
  Timer timer;

  @override
  void initState() {
    super.initState();
    user = auth.currentUser;
    user.sendEmailVerification();
    textController = TextEditingController();

    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      checkEmailVerified();
    });
  }

   @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  Future<void> checkEmailVerified() async{
    user = auth.currentUser;
    await user.reload();
    if (user.emailVerified){
      timer.cancel();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => ListPageWidget()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Verification'),
      key: scaffoldKey,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/blob-scene-haikei 1.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment(0, -0.6),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Верификация',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Montserrat',
                              color: Color(0xFF0D1724),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text('На вашу почту ${user.email} выслано сообщение, подтвердите свой email адрес.'),
                    )
                    // Padding(
                    //   padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                    //   child: Row(
                    //     mainAxisSize: MainAxisSize.max,
                    //     children: [
                    //       Expanded(
                    //         child: Container(
                    //           width: 330,
                    //           height: 60,
                    //           decoration: BoxDecoration(
                    //             color: Colors.white,
                    //             borderRadius: BorderRadius.circular(8),
                    //             border: Border.all(
                    //               color: Color(0xFFE6E6E6),
                    //             ),
                    //           ),
                    //           alignment: Alignment(0, 0),
                    //           child: Padding(
                    //             padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    //             child: TextFormField(
                    //               controller: textController,
                    //               obscureText: false,
                    //               decoration: InputDecoration(
                    //                 labelText: 'Введите код из почты',
                    //                 labelStyle:
                    //                     FlutterFlowTheme.bodyText2.override(
                    //                   fontFamily: 'Montserrat',
                    //                   color: Color(0xFF8B97A2),
                    //                   fontWeight: FontWeight.w500,
                    //                 ),
                    //                 enabledBorder: UnderlineInputBorder(
                    //                   borderSide: BorderSide(
                    //                     color: Colors.transparent,
                    //                     width: 1,
                    //                   ),
                    //                   borderRadius: const BorderRadius.only(
                    //                     topLeft: Radius.circular(4.0),
                    //                     topRight: Radius.circular(4.0),
                    //                   ),
                    //                 ),
                    //                 focusedBorder: UnderlineInputBorder(
                    //                   borderSide: BorderSide(
                    //                     color: Colors.transparent,
                    //                     width: 1,
                    //                   ),
                    //                   borderRadius: const BorderRadius.only(
                    //                     topLeft: Radius.circular(4.0),
                    //                     topRight: Radius.circular(4.0),
                    //                   ),
                    //                 ),
                    //               ),
                    //               style: FlutterFlowTheme.bodyText2.override(
                    //                 fontFamily: 'Montserrat',
                    //                 color: Color(0xFF8B97A2),
                    //                 fontWeight: FontWeight.w500,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    // Align(
                    //   alignment: Alignment(0.95, 0),
                    //   child: Padding(
                    //     padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                    //     child: FFButtonWidget(
                    //       onPressed: () {
                    //         if (textController.text == '1234'){
                    //           Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (context) => AuthenticationWrapper()),
                    //           );
                    //         }
                    //         else{
                    //           scaffoldKey.currentState.showSnackBar(SnackBar(
                    //               content: Text(
                    //             'Неверный код!',
                    //           )));
                    //         }
                    //       },
                    //       text: 'Зарегистрироваться',
                    //       options: FFButtonOptions(
                    //         width: double.infinity,
                    //         height: 60,
                    //         color: FlutterFlowTheme.primaryColor,
                    //         textStyle: FlutterFlowTheme.subtitle2.override(
                    //           fontFamily: 'Montserrat',
                    //           color: Colors.white,
                    //           fontSize: 18,
                    //           fontWeight: FontWeight.w500,
                    //         ),
                    //         elevation: 2,
                    //         borderSide: BorderSide(
                    //           color: Colors.transparent,
                    //           width: 2,
                    //         ),
                    //         borderRadius: 35,
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}
