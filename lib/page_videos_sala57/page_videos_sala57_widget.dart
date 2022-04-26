import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
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
        queryBuilder: (videosSala57Record) => videosSala57Record,
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
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
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
                child: CircularProgressIndicator(
                  color: FlutterFlowTheme.of(context).primaryColor,
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
                    FlutterFlowYoutubePlayer(
                      url: 'https://www.youtube.com/watch?v=C30hQ0ZSFoM',
                      autoPlay: false,
                      looping: true,
                      mute: false,
                      showControls: true,
                      showFullScreen: true,
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
