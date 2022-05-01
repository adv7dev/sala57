import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MeditacoesWidget extends StatefulWidget {
  const MeditacoesWidget({Key key}) : super(key: key);

  @override
  _MeditacoesWidgetState createState() => _MeditacoesWidgetState();
}

class _MeditacoesWidgetState extends State<MeditacoesWidget> {
  PagingController<DocumentSnapshot, MeditacaoRecord> _pagingController =
  PagingController(firstPageKey: null);
  List<StreamSubscription> _streamSubscriptions = [];

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((nextPageMarker) {
      queryMeditacaoRecordPage(
        queryBuilder: (meditacaoRecord) => meditacaoRecord.orderBy('data'),
        nextPageMarker: nextPageMarker,
        pageSize: 20,
        isStream: false,
      ).then((page) {
        _pagingController.appendPage(
          page.data,
          page.nextPageMarker,
        );
        final streamSubscription = page.dataStream?.listen((data) {
          final itemIndexes = _pagingController.itemList
              .asMap()
              .map((k, v) => MapEntry(v.reference.id, k));
          data.forEach((item) {
            final index = itemIndexes[item.reference.id];
            if (index != null) {
              _pagingController.itemList.replaceRange(index, index + 1, [item]);
            }
          });
          setState(() {});
        });
        _streamSubscriptions.add(streamSubscription);
      });
    });
  }

  @override
  void dispose() {
    _streamSubscriptions.forEach((s) => s?.cancel());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Meditações',
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
          child: PagedListView<DocumentSnapshot<Object>, MeditacaoRecord>(
            pagingController: _pagingController,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            builderDelegate: PagedChildBuilderDelegate<MeditacaoRecord>(
              // Customize what your widget looks like when it's loading the first page.
              firstPageProgressIndicatorBuilder: (_) => Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: SpinKitPumpingHeart(
                    color: FlutterFlowTheme.of(context).primaryColor,
                    size: 50,
                  ),
                ),
              ),

              itemBuilder: (context, _, listViewIndex) {
                final listViewMeditacaoRecord =
                _pagingController.itemList[listViewIndex];
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                        child: Container(
                          width: double.infinity,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          child: ExpandableNotifier(
                            initialExpanded: false,
                            child: ExpandablePanel(
                              header: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                child: Text(
                                  listViewMeditacaoRecord.titulo,
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              collapsed: Material(
                                color: Colors.transparent,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              5, 0, 5, 0),
                                          child: Text(
                                            'Toque para visulizar a meditação de hoje...',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Lexend Deca',
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
                                          dateTimeFormat('MMMMEEEEd',
                                              listViewMeditacaoRecord.data),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color:
                                            FlutterFlowTheme.of(context)
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
                                    data: listViewMeditacaoRecord.texto,
                                  ),
                                ],
                              ),
                              theme: ExpandableThemeData(
                                tapHeaderToExpand: true,
                                tapBodyToExpand: false,
                                tapBodyToCollapse: false,
                                headerAlignment:
                                ExpandablePanelHeaderAlignment.center,
                                hasIcon: true,
                                expandIcon: Icons.expand_less,
                                collapseIcon: Icons.expand_more,
                                iconColor:
                                FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
