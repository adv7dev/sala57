import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PageVideosSala57Widget extends StatefulWidget {
  const PageVideosSala57Widget({Key key}) : super(key: key);

  @override
  _PageVideosSala57WidgetState createState() => _PageVideosSala57WidgetState();
}

class _PageVideosSala57WidgetState extends State<PageVideosSala57Widget> {
  PagingController<DocumentSnapshot, VideosSala57Record> _pagingController =
  PagingController(firstPageKey: null);
  List<StreamSubscription> _streamSubscriptions = [];

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((nextPageMarker) {
      queryVideosSala57RecordPage(
        queryBuilder: (videosSala57Record) =>
            videosSala57Record.orderBy('video'),
        nextPageMarker: nextPageMarker,
        pageSize: 10,
        isStream: true,
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
          'Videos Sala57',
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
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 5),
        child: PagedListView<DocumentSnapshot<Object>, VideosSala57Record>(
          pagingController: _pagingController,
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          builderDelegate: PagedChildBuilderDelegate<VideosSala57Record>(
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
              final listViewVideosSala57Record =
              _pagingController.itemList[listViewIndex];
              return Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color:
                            FlutterFlowTheme.of(context).primaryBackground,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 10, 10, 5),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          listViewVideosSala57Record.nome,
                                          style: FlutterFlowTheme.of(context)
                                              .title3
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        listViewIndex.toString(),
                                        textAlign: TextAlign.end,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                          fontFamily: 'Lexend Deca',
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 10, 10, 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: FlutterFlowYoutubePlayer(
                                          url: listViewVideosSala57Record.video,
                                          autoPlay: false,
                                          looping: true,
                                          mute: false,
                                          showControls: true,
                                          showFullScreen: true,
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
              );
            },
          ),
        ),
      ),
    );
  }
}
