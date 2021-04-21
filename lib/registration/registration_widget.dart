import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_dream/auth/auth.dart';
import 'package:my_dream/verification/verification_widget.dart';
import 'package:provider/provider.dart';
import '../appBar.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

class RegistrationWidget extends StatefulWidget {
  RegistrationWidget({Key key}) : super(key: key);

  @override
  _RegistrationWidgetState createState() => _RegistrationWidgetState();
}

class _RegistrationWidgetState extends State<RegistrationWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Registration'),
      key: scaffoldKey,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/Frame 3.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment(0, -0.65),
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
                            'Форма регистрации',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Montserrat',
                              color: Color(0xFF1F1F1F),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: 330,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Color(0xFFE6E6E6),
                                ),
                              ),
                              alignment: Alignment(0, 0),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: TextFormField(
                                  controller: textController1,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Введите почту',
                                    labelStyle:
                                        FlutterFlowTheme.bodyText2.override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF8B97A2),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF8B97A2),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: 330,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Color(0xFFE6E6E6),
                                ),
                              ),
                              alignment: Alignment(0, 0),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: TextFormField(
                                  controller: textController2,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Придумайте пароль',
                                    labelStyle:
                                        FlutterFlowTheme.bodyText2.override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF8B97A2),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF8B97A2),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: 330,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Color(0xFFE6E6E6),
                                ),
                              ),
                              alignment: Alignment(0, 0),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: TextFormField(
                                  controller: textController3,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Повторите пароль',
                                    labelStyle:
                                        FlutterFlowTheme.bodyText2.override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF8B97A2),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF8B97A2),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.95, 0),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () {
                            if (textController2.text == textController3.text){
                              try{
                                auth.createUserWithEmailAndPassword(email: textController1.text.trim(), password: textController2.text.trim()).then((value){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VerificationWidget()),
                                  );
                                });
                                // context.read<AuthService>().signUp(
                                //   email: textController1.text.trim(),
                                //   password: textController2.text.trim(),
                                // );
                              }
                              catch (e){
                                scaffoldKey.currentState.showSnackBar(SnackBar(
                                    content: Text(
                                  'Такой пользователь уже существует!',
                                )));
                              }
                            }
                            else{
                              scaffoldKey.currentState.showSnackBar(SnackBar(
                                  content: Text(
                                'Пароли не совпадают!',
                              )));
                            }
                          },
                          text: 'Продолжить',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 60,
                            color: FlutterFlowTheme.primaryColor,
                            textStyle: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            elevation: 2,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 2,
                            ),
                            borderRadius: 35,
                          ),
                        ),
                      ),
                    )
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
