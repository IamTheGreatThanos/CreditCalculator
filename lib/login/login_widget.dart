import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_dream/appBar.dart';
import 'package:my_dream/auth/auth.dart';
import 'package:my_dream/const.dart';
import 'package:my_dream/list_page/list_page_widget.dart';
import 'package:my_dream/registration/registration_widget.dart';
import 'package:provider/provider.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Login'),
      key: scaffoldKey,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, 0),
              child: Image.asset(
                'assets/images/blob-scene-haikei 1.png',
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
                  shape: BoxShape.rectangle,
                ),
                alignment: Alignment(0, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 120),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 0, 40, 20),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0x66FFFFFF),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: Color(0xFF407BFF),
                              width: 2,
                            ),
                          ),
                          alignment: Alignment(0, 0),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: TextFormField(
                              controller: textController1,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Логин',
                                hintStyle: GoogleFonts.getFont(
                                  'Montserrat',
                                  color: Color(0xFF37474F),
                                  fontWeight: FontWeight.w600,
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
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                color: Color(0xFF37474F),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 0, 40, 20),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0x65FFFFFF),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: Color(0xFF407BFF),
                              width: 2,
                            ),
                          ),
                          alignment: Alignment(0, 0),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: TextFormField(
                              controller: textController2,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Пароль',
                                hintStyle: GoogleFonts.getFont(
                                  'Montserrat',
                                  color: Color(0xFF37474F),
                                  fontWeight: FontWeight.w600,
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
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                color: Color(0xFF37474F),
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          try{
                            auth.signInWithEmailAndPassword(email: textController1.text.trim(), password: textController2.text.trim()).then((value){
                              AppConstants.isLoged = true;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListPageWidget()),
                              );
                            });
                            // context.read<AuthService>().signIn(
                            //   email: textController1.text.trim(),
                            //   password: textController2.text.trim(),
                            // );
                          }
                          catch (e){
                            scaffoldKey.currentState.showSnackBar(SnackBar(
                                  content: Text(
                                'Неверный логин или пароль!',
                              )));
                          }
                        },
                        text: 'Войти',
                        options: FFButtonOptions(
                          width: 300,
                          height: 55,
                          color: Color(0xFF407BFF),
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
                      SizedBox(height: 20,),
                      FFButtonWidget(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationWidget()),
                          );
                        },
                        text: 'Регистрация',
                        options: FFButtonOptions(
                          width: 300,
                          height: 55,
                          color: Color(0xFF407BFF),
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
                      )
                    ],
                  ),
                ),
              ),
            ),
      
          ],
        ),
      ),
    );
  }
}