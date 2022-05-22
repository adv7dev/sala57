import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MeditacoesWidget extends StatefulWidget {
  const MeditacoesWidget({Key key}) : super(key: key);

  @override
  _MeditacoesWidgetState createState() => _MeditacoesWidgetState();
}

class _MeditacoesWidgetState extends State<MeditacoesWidget> {
  DateTimeRange calendarSelectedDay;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Meditação',
          style: FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Lexend Deca',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            width: 100,
                            height: MediaQuery.of(context).size.height * 0.6,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: FlutterFlowCalendar(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              weekFormat: false,
                              weekStartsMonday: false,
                              onChange: (DateTimeRange newSelectedDate) {
                                setState(() =>
                                calendarSelectedDay = newSelectedDate);
                              },
                              titleStyle: GoogleFonts.getFont(
                                'Open Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                              dayOfWeekStyle: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.bold,
                              ),
                              dateStyle: TextStyle(
                                color:
                                FlutterFlowTheme.of(context).secondaryText,
                              ),
                              selectedDateStyle: TextStyle(
                                color:
                                FlutterFlowTheme.of(context).secondaryText,
                              ),
                              inactiveDateStyle: TextStyle(
                                color:
                                FlutterFlowTheme.of(context).secondaryText,
                              ),
                              locale: FFLocalizations.of(context).languageCode,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: FutureBuilder<List<MeditacaoRecord>>(
                        future: queryMeditacaoRecordOnce(
                          queryBuilder: (meditacaoRecord) =>
                              meditacaoRecord.where('data',
                                  isEqualTo: calendarSelectedDay.start),
                          limit: 15,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitPumpingHeart(
                                  color:
                                  FlutterFlowTheme.of(context).primaryColor,
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          List<MeditacaoRecord> listViewMeditacaoRecordList =
                              snapshot.data;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewMeditacaoRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewMeditacaoRecord =
                              listViewMeditacaoRecordList[listViewIndex];
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Container(
                                        width: double.infinity,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        child: ExpandableNotifier(
                                          initialExpanded: false,
                                          child: ExpandablePanel(
                                            header: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 0, 0, 0),
                                              child: Text(
                                                listViewMeditacaoRecord.titulo,
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .title1
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .primaryText,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                            collapsed: Material(
                                              color: Colors.transparent,
                                              elevation: 5,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            5, 0, 5, 0),
                                                        child: Text(
                                                          'Toque para visulizar a meditação de hoje...',
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyText1
                                                              .override(
                                                            fontFamily:
                                                            'Lexend Deca',
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .secondaryText,
                                                            fontSize: 15,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        dateTimeFormat(
                                                            'MMMMEEEEd',
                                                            listViewMeditacaoRecord
                                                                .data),
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                          'Lexend Deca',
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .primaryColor,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            expanded: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Html(
                                                  data: listViewMeditacaoRecord
                                                      .texto,
                                                ),
                                              ],
                                            ),
                                            theme: ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: false,
                                              tapBodyToCollapse: false,
                                              headerAlignment:
                                              ExpandablePanelHeaderAlignment
                                                  .center,
                                              hasIcon: true,
                                              expandIcon: Icons.expand_less,
                                              collapseIcon: Icons.expand_more,
                                              iconColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
