import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../chat_page/chat_page_widget.dart';
import '../create_group_chat/create_group_chat_widget.dart';
import '../flutter_flow/chat/index.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AllChatsPageWidget extends StatefulWidget {
  const AllChatsPageWidget({Key key}) : super(key: key);

  @override
  _AllChatsPageWidgetState createState() => _AllChatsPageWidgetState();
}

class _AllChatsPageWidgetState extends State<AllChatsPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          FFLocalizations.of(context).getText(
            '80ko590x' /* Grupos de Oração */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Lexend Deca',
            color: FlutterFlowTheme.of(context).primaryText,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.scale,
              alignment: Alignment.bottomCenter,
              duration: Duration(milliseconds: 500),
              reverseDuration: Duration(milliseconds: 500),
              child: CreateGroupChatWidget(),
            ),
          );
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        elevation: 8,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 36,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
          child: StreamBuilder<List<ChatsRecord>>(
            stream: queryChatsRecord(
              queryBuilder: (chatsRecord) => chatsRecord
                  .where('users', arrayContains: currentUserReference)
                  .orderBy('last_message_time', descending: true),
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: SpinKitPumpingHeart(
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 50,
                    ),
                  ),
                );
              }
              List<ChatsRecord> listViewChatsRecordList = snapshot.data;
              if (listViewChatsRecordList.isEmpty) {
                return Center(
                  child: Image.asset(
                    'assets/images/chat_(1).png',
                    width: MediaQuery.of(context).size.width * 0.76,
                  ),
                );
              }
              return ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: listViewChatsRecordList.length,
                itemBuilder: (context, listViewIndex) {
                  final listViewChatsRecord =
                  listViewChatsRecordList[listViewIndex];
                  return StreamBuilder<FFChatInfo>(
                    stream: FFChatManager.instance
                        .getChatInfo(chatRecord: listViewChatsRecord),
                    builder: (context, snapshot) {
                      final chatInfo =
                          snapshot.data ?? FFChatInfo(listViewChatsRecord);
                      return FFChatPreview(
                        onTap: chatInfo != null
                            ? () => Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.scale,
                            alignment: Alignment.bottomCenter,
                            duration: Duration(milliseconds: 500),
                            reverseDuration:
                            Duration(milliseconds: 500),
                            child: ChatPageWidget(
                              chatUser: chatInfo.otherUsers.length == 1
                                  ? chatInfo.otherUsersList.first
                                  : null,
                              chatRef: chatInfo.chatRecord.reference,
                            ),
                          ),
                        )
                            : null,
                        lastChatText: chatInfo.chatPreviewMessage(),
                        lastChatTime: listViewChatsRecord.lastMessageTime,
                        seen: listViewChatsRecord.lastMessageSeenBy
                            .contains(currentUserReference),
                        title: chatInfo.chatPreviewTitle(),
                        userProfilePic: chatInfo.chatPreviewPic(),
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        unreadColor: FlutterFlowTheme.of(context).primaryColor,
                        titleTextStyle: GoogleFonts.getFont(
                          'Lexend Deca',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                        ),
                        dateTextStyle: GoogleFonts.getFont(
                          'Lexend Deca',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                        previewTextStyle: GoogleFonts.getFont(
                          'Lexend Deca',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                        contentPadding:
                        EdgeInsetsDirectional.fromSTEB(12, 3, 3, 3),
                        borderRadius: BorderRadius.circular(0),
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
