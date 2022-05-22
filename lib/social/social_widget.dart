import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/delete_post_widget.dart';
import '../create_post/create_post_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../post_details/post_details_widget.dart';
import '../view_profile_page_other/view_profile_page_other_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialWidget extends StatefulWidget {
  const SocialWidget({Key key}) : super(key: key);

  @override
  _SocialWidgetState createState() => _SocialWidgetState();
}

class _SocialWidgetState extends State<SocialWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'iconOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      duration: 600,
      initialState: AnimationState(
        scale: 1.2,
        opacity: 0,
      ),
      finalState: AnimationState(
        scale: 1,
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    setupTriggerAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onActionTrigger),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              'assets/images/Logomarca_confeitaria_(1).png',
              width: 60,
              height: 40,
              fit: BoxFit.fitWidth,
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'SALA DE ORAÇÕES',
                      style: FlutterFlowTheme.of(context).title2.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Publique a sua aqui...',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              buttonSize: 46,
              icon: Icon(
                Icons.notifications_outlined,
                color: FlutterFlowTheme.of(context).grayIcon,
                size: 24,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
        ],
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
              child: CreatePostWidget(),
            ),
          );
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        elevation: 8,
        child: Icon(
          Icons.create_rounded,
          color: Colors.white,
          size: 24,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    color: Color(0x3A000000),
                    offset: Offset(0, 1),
                  )
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 32),
              child: StreamBuilder<List<UserPostsRecord>>(
                stream: queryUserPostsRecord(
                  queryBuilder: (userPostsRecord) =>
                      userPostsRecord.orderBy('timePosted', descending: true),
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
                  List<UserPostsRecord> socialFeedUserPostsRecordList =
                      snapshot.data;
                  if (socialFeedUserPostsRecordList.isEmpty) {
                    return Center(
                      child: Image.asset(
                        'assets/images/sala.png',
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 400,
                      ),
                    );
                  }
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children:
                    List.generate(socialFeedUserPostsRecordList.length,
                            (socialFeedIndex) {
                          final socialFeedUserPostsRecord =
                          socialFeedUserPostsRecordList[socialFeedIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 8),
                            child: StreamBuilder<UsersRecord>(
                              stream: UsersRecord.getDocument(
                                  socialFeedUserPostsRecord.postUser),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: SpinKitPumpingHeart(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 50,
                                      ),
                                    ),
                                  );
                                }
                                final userPostUsersRecord = snapshot.data;
                                return Material(
                                  color: Colors.transparent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x32000000),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    child: InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.scale,
                                            alignment: Alignment.bottomCenter,
                                            duration: Duration(milliseconds: 500),
                                            reverseDuration:
                                            Duration(milliseconds: 500),
                                            child: PostDetailsWidget(
                                              userRecord: userPostUsersRecord,
                                              postReference:
                                              socialFeedUserPostsRecord
                                                  .reference,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                0, 8, 2, 4),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                InkWell(
                                                  onTap: () async {
                                                    await Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType
                                                            .scale,
                                                        alignment:
                                                        Alignment.bottomCenter,
                                                        duration: Duration(
                                                            milliseconds: 500),
                                                        reverseDuration: Duration(
                                                            milliseconds: 500),
                                                        child:
                                                        ViewProfilePageOtherWidget(
                                                          userDetails:
                                                          userPostUsersRecord,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            8, 0, 0, 0),
                                                        child: Card(
                                                          clipBehavior: Clip
                                                              .antiAliasWithSaveLayer,
                                                          color:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .primaryColor,
                                                          elevation: 5,
                                                          shape:
                                                          RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                1, 1, 1, 1),
                                                            child: Container(
                                                              width: 40,
                                                              height: 40,
                                                              clipBehavior:
                                                              Clip.antiAlias,
                                                              decoration:
                                                              BoxDecoration(
                                                                shape:
                                                                BoxShape.circle,
                                                              ),
                                                              child:
                                                              CachedNetworkImage(
                                                                imageUrl:
                                                                valueOrDefault<
                                                                    String>(
                                                                  userPostUsersRecord
                                                                      .photoUrl,
                                                                  'https://yt3.ggpht.com/v3nvnatadE5ItAh744OFOonUxvx5mb5dxG0uW57Dc5-uRQcCoYuwsj5fgrZ__55tzRBw-qPH=s900-c-k-c0x00ffffff-no-rj',
                                                                ),
                                                                fit:
                                                                BoxFit.fitWidth,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            12, 0, 0, 0),
                                                        child: Text(
                                                          valueOrDefault<String>(
                                                            userPostUsersRecord
                                                                .userName,
                                                            'myUsername',
                                                          ),
                                                          style:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .bodyText1
                                                              .override(
                                                            fontFamily:
                                                            'Lexend Deca',
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .primaryText,
                                                            fontSize: 14,
                                                            fontWeight:
                                                            FontWeight
                                                                .w600,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                if ((socialFeedUserPostsRecord
                                                    .postUser) ==
                                                    (currentUserReference))
                                                  FlutterFlowIconButton(
                                                    borderColor: Colors.transparent,
                                                    borderRadius: 30,
                                                    buttonSize: 46,
                                                    icon: Icon(
                                                      Icons.keyboard_control,
                                                      color: FlutterFlowTheme.of(
                                                          context)
                                                          .primaryText,
                                                      size: 20,
                                                    ),
                                                    onPressed: () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled: true,
                                                        backgroundColor:
                                                        Colors.transparent,
                                                        context: context,
                                                        builder: (context) {
                                                          return Padding(
                                                            padding: MediaQuery.of(
                                                                context)
                                                                .viewInsets,
                                                            child: Container(
                                                              height: MediaQuery.of(
                                                                  context)
                                                                  .size
                                                                  .height *
                                                                  0.3,
                                                              child:
                                                              DeletePostWidget(
                                                                postParameters:
                                                                socialFeedUserPostsRecord,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 10),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding: EdgeInsetsDirectional
                                                        .fromSTEB(10, 0, 0, 0),
                                                    child: Text(
                                                      socialFeedUserPostsRecord
                                                          .postTitle,
                                                      style: FlutterFlowTheme.of(
                                                          context)
                                                          .subtitle1
                                                          .override(
                                                        fontFamily:
                                                        'Lexend Deca',
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .primaryText,
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                2, 4, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding: EdgeInsetsDirectional
                                                        .fromSTEB(12, 0, 12, 12),
                                                    child: AutoSizeText(
                                                      valueOrDefault<String>(
                                                        socialFeedUserPostsRecord
                                                            .postDescription,
                                                        'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.⁣ ',
                                                      ).maybeHandleOverflow(
                                                        maxChars: 1000,
                                                        replacement: '…',
                                                      ),
                                                      style: FlutterFlowTheme.of(
                                                          context)
                                                          .bodyText1
                                                          .override(
                                                        fontFamily:
                                                        'Lexend Deca',
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .secondaryText,
                                                        fontSize: 15,
                                                        fontWeight:
                                                        FontWeight.normal,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                8, 4, 8, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsetsDirectional
                                                          .fromSTEB(0, 0, 16, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: 41,
                                                            height: 41,
                                                            child: Stack(
                                                              children: [
                                                                if (!(socialFeedUserPostsRecord
                                                                    .likes
                                                                    .toList()
                                                                    ?.contains(
                                                                    currentUserReference)) ??
                                                                    true)
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0.25),
                                                                    child: InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        final userPostsUpdateData =
                                                                        {
                                                                          'likes':
                                                                          FieldValue
                                                                              .arrayUnion([
                                                                            currentUserReference
                                                                          ]),
                                                                        };
                                                                        await socialFeedUserPostsRecord
                                                                            .reference
                                                                            .update(
                                                                            userPostsUpdateData);
                                                                        await (animationsMap['iconOnActionTriggerAnimation'].curvedAnimation.parent
                                                                        as AnimationController)
                                                                            .forward(
                                                                            from:
                                                                            0.0);
                                                                      },
                                                                      child: FaIcon(
                                                                        FontAwesomeIcons
                                                                            .pray,
                                                                        color: Color(
                                                                            0xFF95A1AC),
                                                                        size: 25,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                if (socialFeedUserPostsRecord
                                                                    .likes
                                                                    .toList()
                                                                    ?.contains(
                                                                    currentUserReference) ??
                                                                    true)
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0.25),
                                                                    child: InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        final userPostsUpdateData =
                                                                        {
                                                                          'likes':
                                                                          FieldValue
                                                                              .arrayRemove([
                                                                            currentUserReference
                                                                          ]),
                                                                        };
                                                                        await socialFeedUserPostsRecord
                                                                            .reference
                                                                            .update(
                                                                            userPostsUpdateData);
                                                                      },
                                                                      child: FaIcon(
                                                                        FontAwesomeIcons
                                                                            .pray,
                                                                        color: FlutterFlowTheme.of(
                                                                            context)
                                                                            .primaryColor,
                                                                        size: 25,
                                                                      ),
                                                                    ).animated([
                                                                      animationsMap[
                                                                      'iconOnActionTriggerAnimation']
                                                                    ]),
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                4, 0, 0, 0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                functions
                                                                    .likes(
                                                                    socialFeedUserPostsRecord)
                                                                    .toString(),
                                                                '0',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText2
                                                                  .override(
                                                                fontFamily:
                                                                'Lexend Deca',
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .mode_comment_outlined,
                                                          color: Color(0xFF95A1AC),
                                                          size: 24,
                                                        ),
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              4, 0, 0, 0),
                                                          child: Text(
                                                            socialFeedUserPostsRecord
                                                                .numComments
                                                                .toString(),
                                                            style:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .bodyText2
                                                                .override(
                                                              fontFamily:
                                                              'Lexend Deca',
                                                              color: Color(
                                                                  0xFF8B97A2),
                                                              fontSize: 14,
                                                              fontWeight:
                                                              FontWeight
                                                                  .normal,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsetsDirectional
                                                          .fromSTEB(0, 2, 8, 0),
                                                      child: Text(
                                                        dateTimeFormat(
                                                            'dd/MM/yy - HH:mm',
                                                            socialFeedUserPostsRecord
                                                                .timePosted),
                                                        style: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyText1,
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.ios_share,
                                                      color: Color(0xFF95A1AC),
                                                      size: 24,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        }),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
