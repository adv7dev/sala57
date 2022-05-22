import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PageVideosSala57Widget extends StatefulWidget {
  const PageVideosSala57Widget({Key key}) : super(key: key);

  @override
  _PageVideosSala57WidgetState createState() => _PageVideosSala57WidgetState();
}

class _PageVideosSala57WidgetState extends State<PageVideosSala57Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        iconTheme:
        IconThemeData(color: FlutterFlowTheme.of(context).primaryColor),
        automaticallyImplyLeading: true,
        title: Text(
          'Videos Sala57',
          style: FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Lexend Deca',
            color: FlutterFlowTheme.of(context).primaryText,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: FlutterFlowWebView(
                url:
                'https://www.youtube.com/c/SALA57ESTAMOSEMMOVIMENTO/videos',
                bypass: false,
                verticalScroll: false,
                horizontalScroll: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
