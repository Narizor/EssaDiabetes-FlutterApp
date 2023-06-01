import 'package:first_app_flutter/theme.dart';
import 'package:first_app_flutter/widgets/drawerContainer.widget.dart';
import 'package:first_app_flutter/widgets/header.widget.dart';
import 'package:flutter/material.dart';

class CaloriesCalculatorView extends StatefulWidget {
  const CaloriesCalculatorView({super.key});

  @override
  State<CaloriesCalculatorView> createState() => _CaloriesCalculatorViewState();
}

class _CaloriesCalculatorViewState extends State<CaloriesCalculatorView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
          child: Form(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Header(
              imgUser: 'assets/images/default.png',
              scaffoldKey: _scaffoldKey,
            ),
            Container(
              alignment: Alignment.center,
              child: const Padding(
                padding: EdgeInsets.only(top: 14.0, bottom: 10),
                child: Text(
                  'Calculadora de Calorías',
                  style: TextStyle(
                      fontSize: 25.0,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        )),
      )),
      drawer: DrawerForInfo(scaffoldKey: _scaffoldKey),
    );
  }
}
