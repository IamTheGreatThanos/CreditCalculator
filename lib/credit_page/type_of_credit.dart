import 'package:flutter/material.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';

class TypeOfCreditPageWidget extends StatefulWidget {
  TypeOfCreditPageWidget({Key key}) : super(key: key);

  @override
  _TypeOfCreditPagePageWidgetState createState() => _TypeOfCreditPagePageWidgetState();
}

class _TypeOfCreditPagePageWidgetState extends State<TypeOfCreditPageWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var list = ['Залоговый', 'Беззалоговый', 'Рефинансирование', 'Ипотека'];

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
          'Вид кредита',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Montserrat',
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin:
                  EdgeInsets.only(right: 10.0, left: 10.0, bottom: 5.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              child: ListTile(
                title: Text(list[index]),
                trailing: Icon(Icons.check),
                onTap: () async {
                  Navigator.pop(context, [list[index],index]);
                },
              ),
            );
          },
        )
      )
    );
  }
}