import '../add_chat_users/add_chat_users_widget.dart';
import '../backend/backend.dart';
import '../flutter_flow/chat/index.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPageWidget extends StatefulWidget {
  const ChatPageWidget({
    Key key,
    this.chatUser,
    this.chatRef,
  }) : super(key: key);

  final UsersRecord chatUser;
  final DocumentReference chatRef;

  @override
  _ChatPageWidgetState createState() => _ChatPageWidgetState();
}

class _ChatPageWidgetState extends State<ChatPageWidget> {
  FFChatInfo _chatInfo;
  bool isGroupChat() {
    if (widget.chatUser == null) {
      return true;
    }
    if (widget.chatRef == null) {
      return false;
    }
    return _chatInfo?.isGroupChat ?? false;
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    FFChatManager.instance
        .getChatInfo(
      otherUserRecord: widget.chatUser,
      chatReference: widget.chatRef,
    )
        .listen((info) {
      if (mounted) {
        setState(() => _chatInfo = info);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryColor,
            size: 24,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Stack(
          children: [
            if (!(isGroupChat()) ?? true)
              Text(
                FFLocalizations.of(context).getText(
                  'o6ycg65w' /* Group Chat */,
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Lexend Deca',
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            if (!(isGroupChat()) ?? true)
              Text(
                widget.chatUser.displayName,
                style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Lexend Deca',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
        actions: [
          Visibility(
            visible: isGroupChat() ?? true,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.scale,
                      alignment: Alignment.bottomCenter,
                      duration: Duration(milliseconds: 500),
                      reverseDuration: Duration(milliseconds: 500),
                      child: AddChatUsersWidget(
                        chat: _chatInfo.chatRecord,
                      ),
                    ),
                  );
                },
                child: Icon(
                  Icons.person_add,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24,
                ),
              ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: StreamBuilder<FFChatInfo>(
          stream: FFChatManager.instance.getChatInfo(
            otherUserRecord: widget.chatUser,
            chatReference: widget.chatRef,
          ),
          builder: (context, snapshot) => snapshot.hasData
              ? FFChatPage(
            chatInfo: snapshot.data,
            allowImages: true,
            backgroundColor:
            FlutterFlowTheme.of(context).secondaryBackground,
            timeDisplaySetting: TimeDisplaySetting.visibleOnTap,
            currentUserBoxDecoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryText,
              border: Border.all(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            otherUsersBoxDecoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryColor,
              border: Border.all(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            currentUserTextStyle: GoogleFonts.getFont(
              'DM Sans',
              color: FlutterFlowTheme.of(context).primaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              fontStyle: FontStyle.normal,
            ),
            otherUsersTextStyle: GoogleFonts.getFont(
              'DM Sans',
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            inputHintTextStyle: GoogleFonts.getFont(
              'DM Sans',
              color: FlutterFlowTheme.of(context).primaryColor,
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
            inputTextStyle: GoogleFonts.getFont(
              'DM Sans',
              color: Color(0xFF0B0B0B),
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
            emptyChatWidget: Image.asset(
              'assets/images/chat_(1).png',
              width: MediaQuery.of(context).size.width * 0.76,
            ),
          )
              : Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitPumpingHeart(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
