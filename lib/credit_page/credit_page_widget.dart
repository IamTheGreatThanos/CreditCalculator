import 'package:my_dream/const.dart';
import 'package:my_dream/credit_page/type_of_credit.dart';
import 'package:my_dream/profile/profile_item.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditPageWidget extends StatefulWidget {
  CreditPageWidget({Key key, this.title, this.id}) : super(key: key);
  String title;
  int id;

  @override
  _CreditPageWidgetState createState() => _CreditPageWidgetState();
}

class _CreditPageWidgetState extends State<CreditPageWidget> {
  var listOfCoef = [0.13, 0.15, 0.16, 0.18];
  var listOfMoney = [[600000,150000000], [150000,5000000], [150000,5000000], [600000,50000000]];
  var listOfMonth = [[6,120], [12,60], [12,60], [6,240]];
  var sum = 0;
  var perMonth = 0;
  TextEditingController textController1;
  TextEditingController textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String creditType = 'Залоговый';
  var ind = 0;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF407BFF),
        automaticallyImplyLeading: true,
        title: Text(
          widget.title,
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Montserrat',
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        // actions: [
        //   Padding(
        //     padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
        //     child: Container(
        //       width: 120,
        //       height: 120,
        //       clipBehavior: Clip.antiAlias,
        //       decoration: BoxDecoration(
        //         shape: BoxShape.circle,
        //       ),
        //       child: Image.asset(
        //         'assets/images/ava.png',
        //       ),
        //     ),
        //   )
        // ],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
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
                      'Кредитный калькулятор',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Montserrat',
                        color: Color(0xFF0D1724),
                        fontWeight: FontWeight.w500,
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
                            keyboardType: TextInputType.number,
                            controller: textController1,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Желаемая сумма кредита (тг)',
                              labelStyle: FlutterFlowTheme.bodyText2.override(
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
                padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'от ${listOfMoney[ind][0]}тг до ${listOfMoney[ind][1]}тг',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Montserrat',
                        color: Color(0xFF0D1724),
                        fontWeight: FontWeight.w500,
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
                            keyboardType: TextInputType.number,
                            controller: textController2,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Срок кредита (месяц)',
                              labelStyle: FlutterFlowTheme.bodyText2.override(
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
                padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'от ${listOfMonth[ind][0]} до ${listOfMonth[ind][1]} месяцев',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Montserrat',
                        color: Color(0xFF0D1724),
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: ListTile(
                    onTap: () async {
                      var result = await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TypeOfCreditPageWidget()),
                      );
                      setState((){
                        creditType = result[0];
                        ind = result[1];
                      });
                    },
                    title: Text(
                      'Вид кредита',
                      style: FlutterFlowTheme.title3.override(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      creditType,
                      style: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF303030),
                      size: 20,
                    ),
                    tileColor: Color(0x00FFFFFF),
                    dense: false,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  'Сумма заявки',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-0.8, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                  child: Text(
                    '$sum тг',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Montserrat',
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  'Ежемесячный платеж',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-0.85, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                  child: Text(
                    '$perMonth тг',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Montserrat',
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.05, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      if (textController1.text != '' && textController2.text != ''){
                        if (mounted){
                          setState((){
                            if(int.parse(textController1.text) != null){
                              sum = int.parse(textController1.text);
                              var oneMonth = (double.parse(textController1.text) * listOfCoef[widget.id])~/12;
                              perMonth = (sum + (oneMonth * int.parse(textController2.text)))~/int.parse(textController2.text);

                              var credItem = CreditItem(widget.title, sum, perMonth);
                              AppConstants.data.add(credItem);
                            }
                          });
                        }
                      }
                      else{
                        scaffoldKey.currentState.showSnackBar(SnackBar(
                                  content: Text('Заполните поля!')
                          )
                        );
                      }
                    },
                    text: 'Оформить заявку',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 60,
                      color: Color(0xFF407BFF),
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
                      borderRadius: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
