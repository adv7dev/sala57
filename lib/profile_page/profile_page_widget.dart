import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../create_post/create_post_widget.dart';
import '../edit_settings/edit_settings_widget.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../post_details/post_details_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class ProfilePageWidget extends StatefulWidget {
  const ProfilePageWidget({Key key}) : super(key: key);

  @override
  _ProfilePageWidgetState createState() => _ProfilePageWidgetState();
}

class _ProfilePageWidgetState extends State<ProfilePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(currentUserReference),
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
        final profilePageUsersRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.97,
                          decoration: BoxDecoration(
                            color:
                            FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          valueOrDefault<String>(
                                            profilePageUsersRecord.displayName,
                                            'UserName',
                                          ),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .title3
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                          AlignmentDirectional(-1, 0),
                                          child: Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 4, 0, 0),
                                            child: Text(
                                              profilePageUsersRecord.email,
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFFEE8B60),
                                                fontSize: 14,
                                                fontWeight:
                                                FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                          AlignmentDirectional(-1, 0),
                                          child: Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 8, 0, 0),
                                            child: Text(
                                              profilePageUsersRecord.bio,
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: FlutterFlowTheme.of(
                                                    context)
                                                    .secondaryText,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.85, 0.68),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 16, 0),
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        borderRadius: BorderRadius.circular(90),
                                      ),
                                      child: Align(
                                        alignment:
                                        AlignmentDirectional(0.85, 0),
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              4, 4, 4, 4),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType.fade,
                                                  child:
                                                  FlutterFlowExpandedImageView(
                                                    image: CachedNetworkImage(
                                                      imageUrl: valueOrDefault<
                                                          String>(
                                                        profilePageUsersRecord
                                                            .photoUrl,
                                                        'https://d1fdloi71mui9q.cloudfront.net/uJv2AiP5TNOFHg9X2INW_equLQuE3E2cZTfk6',
                                                      ),
                                                      fit: BoxFit.contain,
                                                    ),
                                                    allowRotation: false,
                                                    tag: valueOrDefault<String>(
                                                      profilePageUsersRecord
                                                          .photoUrl,
                                                      'https://d1fdloi71mui9q.cloudfront.net/uJv2AiP5TNOFHg9X2INW_equLQuE3E2cZTfk6',
                                                    ),
                                                    useHeroAnimation: true,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Hero(
                                              tag: valueOrDefault<String>(
                                                profilePageUsersRecord.photoUrl,
                                                'https://d1fdloi71mui9q.cloudfront.net/uJv2AiP5TNOFHg9X2INW_equLQuE3E2cZTfk6',
                                              ),
                                              transitionOnUserGestures: true,
                                              child: Container(
                                                width: 90,
                                                height: 90,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: CachedNetworkImage(
                                                  imageUrl:
                                                  valueOrDefault<String>(
                                                    profilePageUsersRecord
                                                        .photoUrl,
                                                    'https://d1fdloi71mui9q.cloudfront.net/uJv2AiP5TNOFHg9X2INW_equLQuE3E2cZTfk6',
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FFButtonWidget(
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
                        text: FFLocalizations.of(context).getText(
                          '8jzc6qfv' /* Publicar */,
                        ),
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                            fontFamily: 'Lexend Deca',
                            color:
                            FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                          elevation: 2,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            width: 2,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.bottomToTop,
                              duration: Duration(milliseconds: 250),
                              reverseDuration: Duration(milliseconds: 250),
                              child: EditSettingsWidget(),
                            ),
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          '5jqt5w76' /* Configurações */,
                        ),
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF010101),
                          ),
                          elevation: 0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).gray200,
                            width: 2,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: DefaultTabController(
                    length: 1,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: FlutterFlowTheme.of(context).primaryText,
                          unselectedLabelColor:
                          FlutterFlowTheme.of(context).grayIcon,
                          labelStyle: GoogleFonts.getFont(
                            'Roboto',
                          ),
                          indicatorColor:
                          FlutterFlowTheme.of(context).primaryColor,
                          indicatorWeight: 2,
                          tabs: [
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'vbaahdnb' /* Meus Pedidos de Oração */,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 32),
                                child: StreamBuilder<List<UserPostsRecord>>(
                                  stream: queryUserPostsRecord(
                                    queryBuilder: (userPostsRecord) =>
                                        userPostsRecord
                                            .where('postUser',
                                            isEqualTo:
                                            profilePageUsersRecord
                                                .reference)
                                            .orderBy('timePosted',
                                            descending: true),
                                  ),
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
                                    List<UserPostsRecord>
                                    socialFeedUserPostsRecordList =
                                        snapshot.data;
                                    if (socialFeedUserPostsRecordList.isEmpty) {
                                      return Center(
                                        child: Image.asset(
                                          'assets/images/03.png',
                                          width: MediaQuery.of(context)
                                              .size
                                              .width *
                                              0.5,
                                          height: 400,
                                        ),
                                      );
                                    }
                                    return SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            socialFeedUserPostsRecordList
                                                .length, (socialFeedIndex) {
                                          final socialFeedUserPostsRecord =
                                          socialFeedUserPostsRecordList[
                                          socialFeedIndex];
                                          return Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                10, 10, 10, 10),
                                            child: StreamBuilder<UsersRecord>(
                                              stream: UsersRecord.getDocument(
                                                  socialFeedUserPostsRecord
                                                      .postUser),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50,
                                                      height: 50,
                                                      child:
                                                      SpinKitPumpingHeart(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .primaryColor,
                                                        size: 50,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                final userPostUsersRecord =
                                                    snapshot.data;
                                                return Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .primaryBackground,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                        Color(0x32000000),
                                                        offset: Offset(0, 2),
                                                      )
                                                    ],
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        10),
                                                  ),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                          PageTransitionType
                                                              .scale,
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          duration: Duration(
                                                              milliseconds:
                                                              500),
                                                          reverseDuration:
                                                          Duration(
                                                              milliseconds:
                                                              500),
                                                          child:
                                                          PostDetailsWidget(
                                                            userRecord:
                                                            userPostUsersRecord,
                                                            postReference:
                                                            socialFeedUserPostsRecord
                                                                .reference,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(0,
                                                              8, 2, 4),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    8,
                                                                    0,
                                                                    0,
                                                                    0),
                                                                child: Card(
                                                                  clipBehavior:
                                                                  Clip.antiAliasWithSaveLayer,
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .primaryColor,
                                                                  shape:
                                                                  RoundedRectangleBorder(
                                                                    borderRadius:
                                                                    BorderRadius.circular(
                                                                        20),
                                                                  ),
                                                                  child:
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        1,
                                                                        1,
                                                                        1,
                                                                        1),
                                                                    child:
                                                                    Container(
                                                                      width: 40,
                                                                      height:
                                                                      40,
                                                                      clipBehavior:
                                                                      Clip.antiAlias,
                                                                      decoration:
                                                                      BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      child:
                                                                      CachedNetworkImage(
                                                                        imageUrl:
                                                                        valueOrDefault<String>(
                                                                          userPostUsersRecord
                                                                              .photoUrl,
                                                                          'https://d1fdloi71mui9q.cloudfront.net/uJv2AiP5TNOFHg9X2INW_equLQuE3E2cZTfk6',
                                                                        ),
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          12,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        userPostUsersRecord
                                                                            .userName,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily: 'Lexend Deca',
                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize: 14,
                                                                          fontWeight: FontWeight.normal,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                      borderRadius:
                                                                      30,
                                                                      buttonSize:
                                                                      46,
                                                                      icon:
                                                                      Icon(
                                                                        Icons
                                                                            .keyboard_control,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        size:
                                                                        20,
                                                                      ),
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'IconButton pressed ...');
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(2,
                                                              4, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      12,
                                                                      0,
                                                                      12,
                                                                      12),
                                                                  child: Text(
                                                                    socialFeedUserPostsRecord
                                                                        .postTitle,
                                                                    style: FlutterFlowTheme.of(
                                                                        context)
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                      'Lexend Deca',
                                                                      color:
                                                                      FlutterFlowTheme.of(context).primaryText,
                                                                      fontSize:
                                                                      18,
                                                                      fontWeight:
                                                                      FontWeight.w600,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(2,
                                                              4, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      12,
                                                                      0,
                                                                      12,
                                                                      12),
                                                                  child: Text(
                                                                    socialFeedUserPostsRecord
                                                                        .postDescription,
                                                                    style: FlutterFlowTheme.of(
                                                                        context)
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                      'Lexend Deca',
                                                                      color:
                                                                      FlutterFlowTheme.of(context).secondaryText,
                                                                      fontSize:
                                                                      14,
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
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(8,
                                                              4, 8, 0),
                                                          child:
                                                          SingleChildScrollView(
                                                            scrollDirection:
                                                            Axis.horizontal,
                                                            child: Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          16,
                                                                          0),
                                                                      child:
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize.max,
                                                                        children: [
                                                                          ToggleIcon(
                                                                            onPressed:
                                                                                () async {
                                                                              final likesElement = profilePageUsersRecord.reference;
                                                                              final likesUpdate = socialFeedUserPostsRecord.likes.toList().contains(likesElement)
                                                                                  ? FieldValue.arrayRemove([
                                                                                likesElement
                                                                              ])
                                                                                  : FieldValue.arrayUnion([
                                                                                likesElement
                                                                              ]);
                                                                              final userPostsUpdateData = {
                                                                                'likes': likesUpdate,
                                                                              };
                                                                              await socialFeedUserPostsRecord.reference.update(userPostsUpdateData);
                                                                            },
                                                                            value:
                                                                            socialFeedUserPostsRecord.likes.toList().contains(profilePageUsersRecord.reference),
                                                                            onIcon:
                                                                            FaIcon(
                                                                              FontAwesomeIcons.pray,
                                                                              color: FlutterFlowTheme.of(context).primaryColor,
                                                                              size: 25,
                                                                            ),
                                                                            offIcon:
                                                                            FaIcon(
                                                                              FontAwesomeIcons.pray,
                                                                              color: Color(0xFF95A1AC),
                                                                              size: 25,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                4,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                            Text(
                                                                              valueOrDefault<String>(
                                                                                functions.likes(socialFeedUserPostsRecord).toString(),
                                                                                '0',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                fontFamily: 'Lexend Deca',
                                                                                color: Color(0xFF8B97A2),
                                                                                fontSize: 14,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .mode_comment_outlined,
                                                                          color:
                                                                          Color(0xFF95A1AC),
                                                                          size:
                                                                          24,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                          Text(
                                                                            socialFeedUserPostsRecord.numComments.toString(),
                                                                            style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                              fontFamily: 'Lexend Deca',
                                                                              color: Color(0xFF8B97A2),
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          8,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        dateTimeFormat(
                                                                            'relative',
                                                                            socialFeedUserPostsRecord.timePosted),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      ),
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .ios_share,
                                                                      color: Color(
                                                                          0xFF95A1AC),
                                                                      size: 24,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          );
                                        }),
                                      ),
                                    );
                                  },
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
          ),
        );
      },
    );
  }
}
