import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CreatePostWidget extends StatefulWidget {
  const CreatePostWidget({Key key}) : super(key: key);

  @override
  _CreatePostWidgetState createState() => _CreatePostWidgetState();
}

class _CreatePostWidgetState extends State<CreatePostWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          FFLocalizations.of(context).getText(
            'o9v9sg2i' /* Escreva seu P. de Oração */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Lexend Deca',
            color: FlutterFlowTheme.of(context).primaryText,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              buttonSize: 48,
              icon: Icon(
                Icons.close_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 30,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 10, 10, 10),
                                        child: TextFormField(
                                          controller: textController1,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText:
                                            FFLocalizations.of(context)
                                                .getText(
                                              'mnrwdjj9' /* Titulo da Oração */,
                                            ),
                                            hintStyle: FlutterFlowTheme.of(
                                                context)
                                                .bodyText2
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .primaryText,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                                width: 2,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(10),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                                width: 2,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(10),
                                            ),
                                            filled: true,
                                            fillColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20, 20, 20, 12),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          textAlign: TextAlign.start,
                                          maxLines: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 10, 10, 10),
                                        child: TextFormField(
                                          controller: textController2,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText:
                                            FFLocalizations.of(context)
                                                .getText(
                                              '0z6ke4c0' /* Texto da Oração */,
                                            ),
                                            hintStyle: FlutterFlowTheme.of(
                                                context)
                                                .bodyText2
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .primaryText,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryColor,
                                                width: 1,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(10),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryColor,
                                                width: 1,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(10),
                                            ),
                                            filled: true,
                                            fillColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20, 20, 20, 12),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          textAlign: TextAlign.start,
                                          maxLines: 4,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryColor,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
              child: FFButtonWidget(
                onPressed: () async {
                  final userPostsCreateData = createUserPostsRecordData(
                    postDescription: textController2.text,
                    postUser: currentUserReference,
                    postTitle: textController1.text,
                    timePosted: getCurrentTimestamp,
                  );
                  await UserPostsRecord.collection
                      .doc()
                      .set(userPostsCreateData);
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.leftToRight,
                      duration: Duration(milliseconds: 250),
                      reverseDuration: Duration(milliseconds: 250),
                      child: NavBarPage(initialPage: 'homePage'),
                    ),
                  );
                },
                text: FFLocalizations.of(context).getText(
                  'zrp1kvg1' /* Publicar Pedido */,
                ),
                options: FFButtonOptions(
                  width: 270,
                  height: 50,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Lexend Deca',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  elevation: 0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 8,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
