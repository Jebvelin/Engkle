import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category6_model.dart';
export 'category6_model.dart';

class Category6Widget extends StatefulWidget {
  const Category6Widget({super.key});

  static String routeName = 'Category6';
  static String routePath = '/category6';

  @override
  State<Category6Widget> createState() => _Category6WidgetState();
}

class _Category6WidgetState extends State<Category6Widget>
    with TickerProviderStateMixin {
  late Category6Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Category6Model());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Material(
              color: Colors.transparent,
              elevation: 0.0,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.asset(
                      'assets/images/Home.png',
                    ).image,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 65.0),
                  child: SafeArea(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'ป.6',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Kanit',
                                        fontSize: 55.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Kanit'),
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: Text(
                                  'มาเรียนรู้คำศัพท์ในหมวดต่างๆกัน!!',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Kanit',
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Kanit'),
                                      ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().wordCount == 10) {
                                        context.pushNamed(
                                            ScoreSchool6Widget.routeName);

                                        FFAppState().wordCount = 0;
                                        safeSetState(() {});
                                        FFAppState().usedNumbers = [];
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().randomPage = functions
                                            .randomPageNumber(FFAppState()
                                                .usedNumbers
                                                .toList());
                                        safeSetState(() {});
                                        FFAppState().addToUsedNumbers(
                                            FFAppState().randomPage);
                                        safeSetState(() {});
                                        if (FFAppState().randomPage == 1) {
                                          FFAppState().wordCount =
                                              FFAppState().wordCount + 1;
                                          safeSetState(() {});

                                          context
                                              .pushNamed(Art61Widget.routeName);
                                        } else {
                                          if (FFAppState().randomPage == 2) {
                                            FFAppState().wordCount =
                                                FFAppState().wordCount + 1;
                                            safeSetState(() {});

                                            context.pushNamed(
                                                Assignment62Widget.routeName);
                                          } else {
                                            if (FFAppState().randomPage == 3) {
                                              FFAppState().wordCount =
                                                  FFAppState().wordCount + 1;
                                              safeSetState(() {});

                                              context.pushNamed(
                                                  English63Widget.routeName);
                                            } else {
                                              if (FFAppState().randomPage ==
                                                  4) {
                                                FFAppState().wordCount =
                                                    FFAppState().wordCount + 1;
                                                safeSetState(() {});

                                                context.pushNamed(
                                                    Exam64Widget.routeName);
                                              } else {
                                                if (FFAppState().randomPage ==
                                                    5) {
                                                  FFAppState().wordCount =
                                                      FFAppState().wordCount +
                                                          1;
                                                  safeSetState(() {});

                                                  context.pushNamed(
                                                      Geography65Widget
                                                          .routeName);
                                                } else {
                                                  if (FFAppState().randomPage ==
                                                      6) {
                                                    FFAppState().wordCount =
                                                        FFAppState().wordCount +
                                                            1;
                                                    safeSetState(() {});

                                                    context.pushNamed(
                                                        Highlighter66Widget
                                                            .routeName);
                                                  } else {
                                                    if (FFAppState()
                                                            .randomPage ==
                                                        7) {
                                                      FFAppState().wordCount =
                                                          FFAppState()
                                                                  .wordCount +
                                                              1;
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                          History67Widget
                                                              .routeName);
                                                    } else {
                                                      if (FFAppState()
                                                              .randomPage ==
                                                          8) {
                                                        FFAppState().wordCount =
                                                            FFAppState()
                                                                    .wordCount +
                                                                1;
                                                        safeSetState(() {});

                                                        context.pushNamed(
                                                            Lecture68Widget
                                                                .routeName);
                                                      } else {
                                                        if (FFAppState()
                                                                .randomPage ==
                                                            9) {
                                                          FFAppState()
                                                                  .wordCount =
                                                              FFAppState()
                                                                      .wordCount +
                                                                  1;
                                                          safeSetState(() {});

                                                          context.pushNamed(
                                                              Science69Widget
                                                                  .routeName);
                                                        } else {
                                                          if (FFAppState()
                                                                  .randomPage ==
                                                              10) {
                                                            FFAppState()
                                                                    .wordCount =
                                                                FFAppState()
                                                                        .wordCount +
                                                                    1;
                                                            safeSetState(() {});

                                                            context.pushNamed(
                                                                Subject610Widget
                                                                    .routeName);
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    },
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.85,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 0.0,
                                            color: FlutterFlowTheme.of(context)
                                                .accent1B,
                                            offset: Offset(
                                              4.0,
                                              4.0,
                                            ),
                                            spreadRadius: 0.0,
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 6.0),
                                                    child: Text(
                                                      'School',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Kanit',
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Kanit'),
                                                          ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 75.0,
                                                    height: 25.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1B,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18.0),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        '10 คำ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Kanit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Kanit'),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 5.0, 55.0, 0.0),
                                              child: Container(
                                                width: 80.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFE163FF),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: AuthUserStreamWidget(
                                                    builder: (context) => Text(
                                                      '${valueOrDefault<String>(
                                                        valueOrDefault(
                                                                currentUserDocument
                                                                    ?.scoreSchool6,
                                                                0)
                                                            .toString(),
                                                        '0',
                                                      )} / คะแนน',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Kanit',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Kanit'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              child: Image.asset(
                                                'assets/images/university_1430986.png',
                                                width: 60.0,
                                                height: 60.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().wordCount == 10) {
                                        context.pushNamed(
                                          ScoreFood6Widget.routeName,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                              duration:
                                                  Duration(milliseconds: 300),
                                            ),
                                          },
                                        );

                                        FFAppState().wordCount = 0;
                                        safeSetState(() {});
                                        FFAppState().usedNumbers = [];
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().randomPage = functions
                                            .randomPageNumber(FFAppState()
                                                .usedNumbers
                                                .toList());
                                        safeSetState(() {});
                                        FFAppState().addToUsedNumbers(
                                            FFAppState().randomPage);
                                        safeSetState(() {});
                                        if (FFAppState().randomPage == 1) {
                                          FFAppState().wordCount =
                                              FFAppState().wordCount + 1;
                                          safeSetState(() {});

                                          context.pushNamed(
                                            Bacon61Widget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 300),
                                              ),
                                            },
                                          );
                                        } else {
                                          if (FFAppState().randomPage == 2) {
                                            FFAppState().wordCount =
                                                FFAppState().wordCount + 1;
                                            safeSetState(() {});

                                            context.pushNamed(
                                              FriedRice62Widget.routeName,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .rightToLeft,
                                                  duration: Duration(
                                                      milliseconds: 300),
                                                ),
                                              },
                                            );
                                          } else {
                                            if (FFAppState().randomPage == 3) {
                                              FFAppState().wordCount =
                                                  FFAppState().wordCount + 1;
                                              safeSetState(() {});

                                              context.pushNamed(
                                                Hamburger63Widget.routeName,
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType
                                                            .rightToLeft,
                                                    duration: Duration(
                                                        milliseconds: 300),
                                                  ),
                                                },
                                              );
                                            } else {
                                              if (FFAppState().randomPage ==
                                                  4) {
                                                FFAppState().wordCount =
                                                    FFAppState().wordCount + 1;
                                                safeSetState(() {});

                                                context.pushNamed(
                                                  IceCream64Widget.routeName,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .rightToLeft,
                                                      duration: Duration(
                                                          milliseconds: 300),
                                                    ),
                                                  },
                                                );
                                              } else {
                                                if (FFAppState().randomPage ==
                                                    5) {
                                                  FFAppState().wordCount =
                                                      FFAppState().wordCount +
                                                          1;
                                                  safeSetState(() {});

                                                  context.pushNamed(
                                                    Pasta65Widget.routeName,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .rightToLeft,
                                                        duration: Duration(
                                                            milliseconds: 300),
                                                      ),
                                                    },
                                                  );
                                                } else {
                                                  if (FFAppState().randomPage ==
                                                      6) {
                                                    FFAppState().wordCount =
                                                        FFAppState().wordCount +
                                                            1;
                                                    safeSetState(() {});

                                                    context.pushNamed(
                                                      Pizza66Widget.routeName,
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  300),
                                                        ),
                                                      },
                                                    );
                                                  } else {
                                                    if (FFAppState()
                                                            .randomPage ==
                                                        7) {
                                                      FFAppState().wordCount =
                                                          FFAppState()
                                                                  .wordCount +
                                                              1;
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                        Salad67Widget.routeName,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .rightToLeft,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    300),
                                                          ),
                                                        },
                                                      );
                                                    } else {
                                                      if (FFAppState()
                                                              .randomPage ==
                                                          8) {
                                                        FFAppState().wordCount =
                                                            FFAppState()
                                                                    .wordCount +
                                                                1;
                                                        safeSetState(() {});

                                                        context.pushNamed(
                                                          Sandwich68Widget
                                                              .routeName,
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .rightToLeft,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      300),
                                                            ),
                                                          },
                                                        );
                                                      } else {
                                                        if (FFAppState()
                                                                .randomPage ==
                                                            9) {
                                                          FFAppState()
                                                                  .wordCount =
                                                              FFAppState()
                                                                      .wordCount +
                                                                  1;
                                                          safeSetState(() {});

                                                          context.pushNamed(
                                                            Sausage69Widget
                                                                .routeName,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .rightToLeft,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        300),
                                                              ),
                                                            },
                                                          );
                                                        } else {
                                                          if (FFAppState()
                                                                  .randomPage ==
                                                              10) {
                                                            FFAppState()
                                                                    .wordCount =
                                                                FFAppState()
                                                                        .wordCount +
                                                                    1;
                                                            safeSetState(() {});

                                                            context.pushNamed(
                                                              Steak610Widget
                                                                  .routeName,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .rightToLeft,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          300),
                                                                ),
                                                              },
                                                            );
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    },
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.85,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 0.0,
                                            color: FlutterFlowTheme.of(context)
                                                .accent2B,
                                            offset: Offset(
                                              4.0,
                                              4.0,
                                            ),
                                            spreadRadius: 0.0,
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 6.0),
                                                    child: AutoSizeText(
                                                      'Food',
                                                      minFontSize: 14.0,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Kanit',
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Kanit'),
                                                          ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 75.0,
                                                    height: 25.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent2B,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18.0),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        '10 คำ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Kanit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Kanit'),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 5.0, 55.0, 0.0),
                                              child: Container(
                                                width: 80.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF00BDEA),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: AuthUserStreamWidget(
                                                    builder: (context) => Text(
                                                      '${valueOrDefault<String>(
                                                        valueOrDefault(
                                                                currentUserDocument
                                                                    ?.scoreFood6,
                                                                0)
                                                            .toString(),
                                                        '0',
                                                      )} / คะแนน',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Kanit',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Kanit'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              child: Image.asset(
                                                'assets/images/hot-pot_3183463.png',
                                                width: 60.0,
                                                height: 60.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().wordCount == 10) {
                                        context.pushNamed(
                                          ScoreAnimal6Widget.routeName,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                              duration:
                                                  Duration(milliseconds: 300),
                                            ),
                                          },
                                        );

                                        FFAppState().wordCount = 0;
                                        safeSetState(() {});
                                        FFAppState().usedNumbers = [];
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().randomPage = functions
                                            .randomPageNumber(FFAppState()
                                                .usedNumbers
                                                .toList());
                                        safeSetState(() {});
                                        FFAppState().addToUsedNumbers(
                                            FFAppState().randomPage);
                                        safeSetState(() {});
                                        if (FFAppState().randomPage == 1) {
                                          FFAppState().wordCount =
                                              FFAppState().wordCount + 1;
                                          safeSetState(() {});

                                          context.pushNamed(
                                            Bird61Widget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 300),
                                              ),
                                            },
                                          );
                                        } else {
                                          if (FFAppState().randomPage == 2) {
                                            FFAppState().wordCount =
                                                FFAppState().wordCount + 1;
                                            safeSetState(() {});

                                            context.pushNamed(
                                              Cat62Widget.routeName,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .rightToLeft,
                                                  duration: Duration(
                                                      milliseconds: 300),
                                                ),
                                              },
                                            );
                                          } else {
                                            if (FFAppState().randomPage == 3) {
                                              FFAppState().wordCount =
                                                  FFAppState().wordCount + 1;
                                              safeSetState(() {});

                                              context.pushNamed(
                                                Cow63Widget.routeName,
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType
                                                            .rightToLeft,
                                                    duration: Duration(
                                                        milliseconds: 300),
                                                  ),
                                                },
                                              );
                                            } else {
                                              if (FFAppState().randomPage ==
                                                  4) {
                                                FFAppState().wordCount =
                                                    FFAppState().wordCount + 1;
                                                safeSetState(() {});

                                                context.pushNamed(
                                                  Dog64Widget.routeName,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .rightToLeft,
                                                      duration: Duration(
                                                          milliseconds: 300),
                                                    ),
                                                  },
                                                );
                                              } else {
                                                if (FFAppState().randomPage ==
                                                    5) {
                                                  FFAppState().wordCount =
                                                      FFAppState().wordCount +
                                                          1;
                                                  safeSetState(() {});

                                                  context.pushNamed(
                                                    Duck65Widget.routeName,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .rightToLeft,
                                                        duration: Duration(
                                                            milliseconds: 300),
                                                      ),
                                                    },
                                                  );
                                                } else {
                                                  if (FFAppState().randomPage ==
                                                      6) {
                                                    FFAppState().wordCount =
                                                        FFAppState().wordCount +
                                                            1;
                                                    safeSetState(() {});

                                                    context.pushNamed(
                                                      Fish66Widget.routeName,
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  300),
                                                        ),
                                                      },
                                                    );
                                                  } else {
                                                    if (FFAppState()
                                                            .randomPage ==
                                                        7) {
                                                      FFAppState().wordCount =
                                                          FFAppState()
                                                                  .wordCount +
                                                              1;
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                        Frog67Widget.routeName,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .rightToLeft,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    300),
                                                          ),
                                                        },
                                                      );
                                                    } else {
                                                      if (FFAppState()
                                                              .randomPage ==
                                                          8) {
                                                        FFAppState().wordCount =
                                                            FFAppState()
                                                                    .wordCount +
                                                                1;
                                                        safeSetState(() {});

                                                        context.pushNamed(
                                                          Horse68Widget
                                                              .routeName,
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .rightToLeft,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      300),
                                                            ),
                                                          },
                                                        );
                                                      } else {
                                                        if (FFAppState()
                                                                .randomPage ==
                                                            9) {
                                                          FFAppState()
                                                                  .wordCount =
                                                              FFAppState()
                                                                      .wordCount +
                                                                  1;
                                                          safeSetState(() {});

                                                          context.pushNamed(
                                                            Pig69Widget
                                                                .routeName,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .rightToLeft,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        300),
                                                              ),
                                                            },
                                                          );
                                                        } else {
                                                          if (FFAppState()
                                                                  .randomPage ==
                                                              10) {
                                                            FFAppState()
                                                                    .wordCount =
                                                                FFAppState()
                                                                        .wordCount +
                                                                    1;
                                                            safeSetState(() {});

                                                            context.pushNamed(
                                                              Sheep610Widget
                                                                  .routeName,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .rightToLeft,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          300),
                                                                ),
                                                              },
                                                            );
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    },
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.85,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent3,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 0.0,
                                            color: FlutterFlowTheme.of(context)
                                                .accent3B,
                                            offset: Offset(
                                              4.0,
                                              4.0,
                                            ),
                                            spreadRadius: 0.0,
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 6.0),
                                                    child: AutoSizeText(
                                                      'Animal',
                                                      minFontSize: 14.0,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Kanit',
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Kanit'),
                                                          ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 75.0,
                                                    height: 25.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent3B,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18.0),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        '10 คำ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Kanit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Kanit'),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 5.0, 55.0, 0.0),
                                              child: Container(
                                                width: 80.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF487C59),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: AuthUserStreamWidget(
                                                    builder: (context) => Text(
                                                      '${valueOrDefault<String>(
                                                        valueOrDefault(
                                                                currentUserDocument
                                                                    ?.scoreAnimal6,
                                                                0)
                                                            .toString(),
                                                        '0',
                                                      )} / คะแนน',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Kanit',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Kanit'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              child: Image.asset(
                                                'assets/images/elephant_713996.png',
                                                width: 60.0,
                                                height: 60.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().wordCount == 10) {
                                        context.pushNamed(
                                          ScoreMovies6Widget.routeName,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                              duration:
                                                  Duration(milliseconds: 300),
                                            ),
                                          },
                                        );

                                        FFAppState().wordCount = 0;
                                        safeSetState(() {});
                                        FFAppState().usedNumbers = [];
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().randomPage = functions
                                            .randomPageNumber(FFAppState()
                                                .usedNumbers
                                                .toList());
                                        safeSetState(() {});
                                        FFAppState().addToUsedNumbers(
                                            FFAppState().randomPage);
                                        safeSetState(() {});
                                        if (FFAppState().randomPage == 1) {
                                          FFAppState().wordCount =
                                              FFAppState().wordCount + 1;
                                          safeSetState(() {});

                                          context.pushNamed(
                                            Action61Widget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 300),
                                              ),
                                            },
                                          );
                                        } else {
                                          if (FFAppState().randomPage == 2) {
                                            FFAppState().wordCount =
                                                FFAppState().wordCount + 1;
                                            safeSetState(() {});

                                            context.pushNamed(
                                              Animation62Widget.routeName,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .rightToLeft,
                                                  duration: Duration(
                                                      milliseconds: 300),
                                                ),
                                              },
                                            );
                                          } else {
                                            if (FFAppState().randomPage == 3) {
                                              FFAppState().wordCount =
                                                  FFAppState().wordCount + 1;
                                              safeSetState(() {});

                                              context.pushNamed(
                                                Character63Widget.routeName,
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType
                                                            .rightToLeft,
                                                    duration: Duration(
                                                        milliseconds: 300),
                                                  ),
                                                },
                                              );
                                            } else {
                                              if (FFAppState().randomPage ==
                                                  4) {
                                                FFAppState().wordCount =
                                                    FFAppState().wordCount + 1;
                                                safeSetState(() {});

                                                context.pushNamed(
                                                  Comedy64Widget.routeName,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .rightToLeft,
                                                      duration: Duration(
                                                          milliseconds: 300),
                                                    ),
                                                  },
                                                );
                                              } else {
                                                if (FFAppState().randomPage ==
                                                    5) {
                                                  FFAppState().wordCount =
                                                      FFAppState().wordCount +
                                                          1;
                                                  safeSetState(() {});

                                                  context.pushNamed(
                                                    Documentary65Widget
                                                        .routeName,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .rightToLeft,
                                                        duration: Duration(
                                                            milliseconds: 300),
                                                      ),
                                                    },
                                                  );
                                                } else {
                                                  if (FFAppState().randomPage ==
                                                      6) {
                                                    FFAppState().wordCount =
                                                        FFAppState().wordCount +
                                                            1;
                                                    safeSetState(() {});

                                                    context.pushNamed(
                                                      Drama66Widget.routeName,
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  300),
                                                        ),
                                                      },
                                                    );
                                                  } else {
                                                    if (FFAppState()
                                                            .randomPage ==
                                                        7) {
                                                      FFAppState().wordCount =
                                                          FFAppState()
                                                                  .wordCount +
                                                              1;
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                        Genre67Widget.routeName,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .rightToLeft,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    300),
                                                          ),
                                                        },
                                                      );
                                                    } else {
                                                      if (FFAppState()
                                                              .randomPage ==
                                                          8) {
                                                        FFAppState().wordCount =
                                                            FFAppState()
                                                                    .wordCount +
                                                                1;
                                                        safeSetState(() {});

                                                        context.pushNamed(
                                                          Horror68Widget
                                                              .routeName,
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .rightToLeft,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      300),
                                                            ),
                                                          },
                                                        );
                                                      } else {
                                                        if (FFAppState()
                                                                .randomPage ==
                                                            9) {
                                                          FFAppState()
                                                                  .wordCount =
                                                              FFAppState()
                                                                      .wordCount +
                                                                  1;
                                                          safeSetState(() {});

                                                          context.pushNamed(
                                                            Producer69Widget
                                                                .routeName,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .rightToLeft,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        300),
                                                              ),
                                                            },
                                                          );
                                                        } else {
                                                          if (FFAppState()
                                                                  .randomPage ==
                                                              10) {
                                                            FFAppState()
                                                                    .wordCount =
                                                                FFAppState()
                                                                        .wordCount +
                                                                    1;
                                                            safeSetState(() {});

                                                            context.pushNamed(
                                                              Romance610Widget
                                                                  .routeName,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .rightToLeft,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          300),
                                                                ),
                                                              },
                                                            );
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    },
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.85,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 0.0,
                                            color: FlutterFlowTheme.of(context)
                                                .accent4B,
                                            offset: Offset(
                                              4.0,
                                              4.0,
                                            ),
                                            spreadRadius: 0.0,
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 6.0),
                                                    child: AutoSizeText(
                                                      'Movies',
                                                      minFontSize: 14.0,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Kanit',
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Kanit'),
                                                          ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 75.0,
                                                    height: 25.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent4B,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18.0),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        '10 คำ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Kanit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Kanit'),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 5.0, 55.0, 0.0),
                                              child: Container(
                                                width: 80.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF9F9500),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: AuthUserStreamWidget(
                                                    builder: (context) => Text(
                                                      '${valueOrDefault<String>(
                                                        valueOrDefault(
                                                                currentUserDocument
                                                                    ?.scoreMovies6,
                                                                0)
                                                            .toString(),
                                                        '0',
                                                      )} / คะแนน',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Kanit',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Kanit'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              child: Image.asset(
                                                'assets/images/cinema_1719952.png',
                                                width: 60.0,
                                                height: 60.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().wordCount == 10) {
                                        context.pushNamed(
                                          ScoreBody6Widget.routeName,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                              duration:
                                                  Duration(milliseconds: 300),
                                            ),
                                          },
                                        );

                                        FFAppState().wordCount = 0;
                                        safeSetState(() {});
                                        FFAppState().usedNumbers = [];
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().randomPage = functions
                                            .randomPageNumber(FFAppState()
                                                .usedNumbers
                                                .toList());
                                        safeSetState(() {});
                                        FFAppState().addToUsedNumbers(
                                            FFAppState().randomPage);
                                        safeSetState(() {});
                                        if (FFAppState().randomPage == 1) {
                                          FFAppState().wordCount =
                                              FFAppState().wordCount + 1;
                                          safeSetState(() {});

                                          context.pushNamed(
                                            Brain61Widget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 300),
                                              ),
                                            },
                                          );
                                        } else {
                                          if (FFAppState().randomPage == 2) {
                                            FFAppState().wordCount =
                                                FFAppState().wordCount + 1;
                                            safeSetState(() {});

                                            context.pushNamed(
                                              Cheek62Widget.routeName,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .rightToLeft,
                                                  duration: Duration(
                                                      milliseconds: 300),
                                                ),
                                              },
                                            );
                                          } else {
                                            if (FFAppState().randomPage == 3) {
                                              FFAppState().wordCount =
                                                  FFAppState().wordCount + 1;
                                              safeSetState(() {});

                                              context.pushNamed(
                                                Eyebrow63Widget.routeName,
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType
                                                            .rightToLeft,
                                                    duration: Duration(
                                                        milliseconds: 300),
                                                  ),
                                                },
                                              );
                                            } else {
                                              if (FFAppState().randomPage ==
                                                  4) {
                                                FFAppState().wordCount =
                                                    FFAppState().wordCount + 1;
                                                safeSetState(() {});

                                                context.pushNamed(
                                                  Eyelash64Widget.routeName,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .rightToLeft,
                                                      duration: Duration(
                                                          milliseconds: 300),
                                                    ),
                                                  },
                                                );
                                              } else {
                                                if (FFAppState().randomPage ==
                                                    5) {
                                                  FFAppState().wordCount =
                                                      FFAppState().wordCount +
                                                          1;
                                                  safeSetState(() {});

                                                  context.pushNamed(
                                                    Face65Widget.routeName,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .rightToLeft,
                                                        duration: Duration(
                                                            milliseconds: 300),
                                                      ),
                                                    },
                                                  );
                                                } else {
                                                  if (FFAppState().randomPage ==
                                                      6) {
                                                    FFAppState().wordCount =
                                                        FFAppState().wordCount +
                                                            1;
                                                    safeSetState(() {});

                                                    context.pushNamed(
                                                        Forehead66Widget
                                                            .routeName);
                                                  } else {
                                                    if (FFAppState()
                                                            .randomPage ==
                                                        7) {
                                                      FFAppState().wordCount =
                                                          FFAppState()
                                                                  .wordCount +
                                                              1;
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                        Hair67Widget.routeName,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .rightToLeft,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    300),
                                                          ),
                                                        },
                                                      );
                                                    } else {
                                                      if (FFAppState()
                                                              .randomPage ==
                                                          8) {
                                                        FFAppState().wordCount =
                                                            FFAppState()
                                                                    .wordCount +
                                                                1;
                                                        safeSetState(() {});

                                                        context.pushNamed(
                                                          Head68Widget
                                                              .routeName,
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .rightToLeft,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      300),
                                                            ),
                                                          },
                                                        );
                                                      } else {
                                                        if (FFAppState()
                                                                .randomPage ==
                                                            9) {
                                                          FFAppState()
                                                                  .wordCount =
                                                              FFAppState()
                                                                      .wordCount +
                                                                  1;
                                                          safeSetState(() {});

                                                          context.pushNamed(
                                                            Pupil69Widget
                                                                .routeName,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .rightToLeft,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        300),
                                                              ),
                                                            },
                                                          );
                                                        } else {
                                                          if (FFAppState()
                                                                  .randomPage ==
                                                              10) {
                                                            FFAppState()
                                                                    .wordCount =
                                                                FFAppState()
                                                                        .wordCount +
                                                                    1;
                                                            safeSetState(() {});

                                                            context.pushNamed(
                                                              Skull610Widget
                                                                  .routeName,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .rightToLeft,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          300),
                                                                ),
                                                              },
                                                            );
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    },
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.85,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent5,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 0.0,
                                            color: FlutterFlowTheme.of(context)
                                                .accent5B,
                                            offset: Offset(
                                              4.0,
                                              4.0,
                                            ),
                                            spreadRadius: 0.0,
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 6.0),
                                                    child: AutoSizeText(
                                                      'Body',
                                                      minFontSize: 14.0,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Kanit',
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Kanit'),
                                                          ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 75.0,
                                                    height: 25.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent5B,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18.0),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        '10 คำ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Kanit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Kanit'),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 5.0, 55.0, 0.0),
                                              child: Container(
                                                width: 80.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFB2570B),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: AuthUserStreamWidget(
                                                    builder: (context) => Text(
                                                      '${valueOrDefault<String>(
                                                        valueOrDefault(
                                                                currentUserDocument
                                                                    ?.scoreBody6,
                                                                0)
                                                            .toString(),
                                                        '0',
                                                      )} / คะแนน',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Kanit',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Kanit'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              child: Image.asset(
                                                'assets/images/surgery_3613520.png',
                                                width: 55.0,
                                                height: 55.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().wordCount == 10) {
                                        context.pushNamed(
                                          ScoreFamily6Widget.routeName,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                              duration:
                                                  Duration(milliseconds: 300),
                                            ),
                                          },
                                        );

                                        FFAppState().wordCount = 0;
                                        safeSetState(() {});
                                        FFAppState().usedNumbers = [];
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().randomPage = functions
                                            .randomPageNumber(FFAppState()
                                                .usedNumbers
                                                .toList());
                                        safeSetState(() {});
                                        FFAppState().addToUsedNumbers(
                                            FFAppState().randomPage);
                                        safeSetState(() {});
                                        if (FFAppState().randomPage == 1) {
                                          FFAppState().wordCount =
                                              FFAppState().wordCount + 1;
                                          safeSetState(() {});

                                          context.pushNamed(
                                            Aunt61Widget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 300),
                                              ),
                                            },
                                          );
                                        } else {
                                          if (FFAppState().randomPage == 2) {
                                            FFAppState().wordCount =
                                                FFAppState().wordCount + 1;
                                            safeSetState(() {});

                                            context.pushNamed(
                                              Brother62Widget.routeName,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .rightToLeft,
                                                  duration: Duration(
                                                      milliseconds: 300),
                                                ),
                                              },
                                            );
                                          } else {
                                            if (FFAppState().randomPage == 3) {
                                              FFAppState().wordCount =
                                                  FFAppState().wordCount + 1;
                                              safeSetState(() {});

                                              context.pushNamed(
                                                Cousin63Widget.routeName,
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType
                                                            .rightToLeft,
                                                    duration: Duration(
                                                        milliseconds: 300),
                                                  ),
                                                },
                                              );
                                            } else {
                                              if (FFAppState().randomPage ==
                                                  4) {
                                                FFAppState().wordCount =
                                                    FFAppState().wordCount + 1;
                                                safeSetState(() {});

                                                context.pushNamed(
                                                  Family64Widget.routeName,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .rightToLeft,
                                                      duration: Duration(
                                                          milliseconds: 300),
                                                    ),
                                                  },
                                                );
                                              } else {
                                                if (FFAppState().randomPage ==
                                                    5) {
                                                  FFAppState().wordCount =
                                                      FFAppState().wordCount +
                                                          1;
                                                  safeSetState(() {});

                                                  context.pushNamed(
                                                    Father65Widget.routeName,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .rightToLeft,
                                                        duration: Duration(
                                                            milliseconds: 300),
                                                      ),
                                                    },
                                                  );
                                                } else {
                                                  if (FFAppState().randomPage ==
                                                      6) {
                                                    FFAppState().wordCount =
                                                        FFAppState().wordCount +
                                                            1;
                                                    safeSetState(() {});

                                                    context.pushNamed(
                                                        Grandfather66Widget
                                                            .routeName);
                                                  } else {
                                                    if (FFAppState()
                                                            .randomPage ==
                                                        7) {
                                                      FFAppState().wordCount =
                                                          FFAppState()
                                                                  .wordCount +
                                                              1;
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                        Grandmother67Widget
                                                            .routeName,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .rightToLeft,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    300),
                                                          ),
                                                        },
                                                      );
                                                    } else {
                                                      if (FFAppState()
                                                              .randomPage ==
                                                          8) {
                                                        FFAppState().wordCount =
                                                            FFAppState()
                                                                    .wordCount +
                                                                1;
                                                        safeSetState(() {});

                                                        context.pushNamed(
                                                          Mother68Widget
                                                              .routeName,
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .rightToLeft,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      300),
                                                            ),
                                                          },
                                                        );
                                                      } else {
                                                        if (FFAppState()
                                                                .randomPage ==
                                                            9) {
                                                          FFAppState()
                                                                  .wordCount =
                                                              FFAppState()
                                                                      .wordCount +
                                                                  1;
                                                          safeSetState(() {});

                                                          context.pushNamed(
                                                            Sister69Widget
                                                                .routeName,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .rightToLeft,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        300),
                                                              ),
                                                            },
                                                          );
                                                        } else {
                                                          if (FFAppState()
                                                                  .randomPage ==
                                                              10) {
                                                            FFAppState()
                                                                    .wordCount =
                                                                FFAppState()
                                                                        .wordCount +
                                                                    1;
                                                            safeSetState(() {});

                                                            context.pushNamed(
                                                              Uncle610Widget
                                                                  .routeName,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .rightToLeft,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          300),
                                                                ),
                                                              },
                                                            );
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    },
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.85,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent6,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 0.0,
                                            color: FlutterFlowTheme.of(context)
                                                .accent6B,
                                            offset: Offset(
                                              4.0,
                                              4.0,
                                            ),
                                            spreadRadius: 0.0,
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 6.0),
                                                    child: AutoSizeText(
                                                      'Family',
                                                      minFontSize: 14.0,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Kanit',
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Kanit'),
                                                          ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 75.0,
                                                    height: 25.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent6B,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18.0),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        '10 คำ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Kanit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Kanit'),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 5.0, 55.0, 0.0),
                                              child: Container(
                                                width: 80.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF9A1031),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: AuthUserStreamWidget(
                                                    builder: (context) => Text(
                                                      '${valueOrDefault<String>(
                                                        valueOrDefault(
                                                                currentUserDocument
                                                                    ?.scoreFamily6,
                                                                0)
                                                            .toString(),
                                                        '0',
                                                      )} / คะแนน',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Kanit',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Kanit'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              child: Image.asset(
                                                'assets/images/family_2061474.png',
                                                width: 55.0,
                                                height: 55.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().wordCount == 10) {
                                        context.pushNamed(
                                          ScoreJobs6Widget.routeName,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                              duration:
                                                  Duration(milliseconds: 300),
                                            ),
                                          },
                                        );

                                        FFAppState().wordCount = 0;
                                        safeSetState(() {});
                                        FFAppState().usedNumbers = [];
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().randomPage = functions
                                            .randomPageNumber(FFAppState()
                                                .usedNumbers
                                                .toList());
                                        safeSetState(() {});
                                        FFAppState().addToUsedNumbers(
                                            FFAppState().randomPage);
                                        safeSetState(() {});
                                        if (FFAppState().randomPage == 1) {
                                          FFAppState().wordCount =
                                              FFAppState().wordCount + 1;
                                          safeSetState(() {});

                                          context.pushNamed(
                                            Architect61Widget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 300),
                                              ),
                                            },
                                          );
                                        } else {
                                          if (FFAppState().randomPage == 2) {
                                            FFAppState().wordCount =
                                                FFAppState().wordCount + 1;
                                            safeSetState(() {});

                                            context.pushNamed(
                                              Doctor62Widget.routeName,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .rightToLeft,
                                                  duration: Duration(
                                                      milliseconds: 300),
                                                ),
                                              },
                                            );
                                          } else {
                                            if (FFAppState().randomPage == 3) {
                                              FFAppState().wordCount =
                                                  FFAppState().wordCount + 1;
                                              safeSetState(() {});

                                              context.pushNamed(
                                                Engineer63Widget.routeName,
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType
                                                            .rightToLeft,
                                                    duration: Duration(
                                                        milliseconds: 300),
                                                  ),
                                                },
                                              );
                                            } else {
                                              if (FFAppState().randomPage ==
                                                  4) {
                                                FFAppState().wordCount =
                                                    FFAppState().wordCount + 1;
                                                safeSetState(() {});

                                                context.pushNamed(
                                                  Farmer64Widget.routeName,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .rightToLeft,
                                                      duration: Duration(
                                                          milliseconds: 300),
                                                    ),
                                                  },
                                                );
                                              } else {
                                                if (FFAppState().randomPage ==
                                                    5) {
                                                  FFAppState().wordCount =
                                                      FFAppState().wordCount +
                                                          1;
                                                  safeSetState(() {});

                                                  context.pushNamed(
                                                    Firefighter65Widget
                                                        .routeName,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .rightToLeft,
                                                        duration: Duration(
                                                            milliseconds: 300),
                                                      ),
                                                    },
                                                  );
                                                } else {
                                                  if (FFAppState().randomPage ==
                                                      6) {
                                                    FFAppState().wordCount =
                                                        FFAppState().wordCount +
                                                            1;
                                                    safeSetState(() {});

                                                    context.pushNamed(
                                                        Journalist66Widget
                                                            .routeName);
                                                  } else {
                                                    if (FFAppState()
                                                            .randomPage ==
                                                        7) {
                                                      FFAppState().wordCount =
                                                          FFAppState()
                                                                  .wordCount +
                                                              1;
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                        Nurse67Widget.routeName,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .rightToLeft,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    300),
                                                          ),
                                                        },
                                                      );
                                                    } else {
                                                      if (FFAppState()
                                                              .randomPage ==
                                                          8) {
                                                        FFAppState().wordCount =
                                                            FFAppState()
                                                                    .wordCount +
                                                                1;
                                                        safeSetState(() {});

                                                        context.pushNamed(
                                                          PoliceOfficer68Widget
                                                              .routeName,
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .rightToLeft,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      300),
                                                            ),
                                                          },
                                                        );
                                                      } else {
                                                        if (FFAppState()
                                                                .randomPage ==
                                                            9) {
                                                          FFAppState()
                                                                  .wordCount =
                                                              FFAppState()
                                                                      .wordCount +
                                                                  1;
                                                          safeSetState(() {});

                                                          context.pushNamed(
                                                            Scientist69Widget
                                                                .routeName,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .rightToLeft,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        300),
                                                              ),
                                                            },
                                                          );
                                                        } else {
                                                          if (FFAppState()
                                                                  .randomPage ==
                                                              10) {
                                                            FFAppState()
                                                                    .wordCount =
                                                                FFAppState()
                                                                        .wordCount +
                                                                    1;
                                                            safeSetState(() {});

                                                            context.pushNamed(
                                                              Teacher610Widget
                                                                  .routeName,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .rightToLeft,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          300),
                                                                ),
                                                              },
                                                            );
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    },
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.85,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFC0FD),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 0.0,
                                            color: Color(0xFFC745C3),
                                            offset: Offset(
                                              4.0,
                                              4.0,
                                            ),
                                            spreadRadius: 0.0,
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 6.0),
                                                    child: AutoSizeText(
                                                      'Jobs',
                                                      minFontSize: 14.0,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Kanit',
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Kanit'),
                                                          ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 75.0,
                                                    height: 25.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFC745C3),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18.0),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        '10 คำ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Kanit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Kanit'),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 5.0, 55.0, 0.0),
                                              child: Container(
                                                width: 80.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFB424AF),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: AuthUserStreamWidget(
                                                    builder: (context) => Text(
                                                      '${valueOrDefault<String>(
                                                        valueOrDefault(
                                                                currentUserDocument
                                                                    ?.scoreJobs6,
                                                                0)
                                                            .toString(),
                                                        '0',
                                                      )} / คะแนน',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Kanit',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Kanit'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              child: Image.asset(
                                                'assets/images/businessman_4435077.png',
                                                width: 55.0,
                                                height: 55.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().wordCount == 10) {
                                        context.pushNamed(
                                          ScoreSport6Widget.routeName,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                              duration:
                                                  Duration(milliseconds: 300),
                                            ),
                                          },
                                        );

                                        FFAppState().wordCount = 0;
                                        safeSetState(() {});
                                        FFAppState().usedNumbers = [];
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().randomPage = functions
                                            .randomPageNumber(FFAppState()
                                                .usedNumbers
                                                .toList());
                                        safeSetState(() {});
                                        FFAppState().addToUsedNumbers(
                                            FFAppState().randomPage);
                                        safeSetState(() {});
                                        if (FFAppState().randomPage == 1) {
                                          FFAppState().wordCount =
                                              FFAppState().wordCount + 1;
                                          safeSetState(() {});

                                          context.pushNamed(
                                            Badminton61Widget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 300),
                                              ),
                                            },
                                          );
                                        } else {
                                          if (FFAppState().randomPage == 2) {
                                            FFAppState().wordCount =
                                                FFAppState().wordCount + 1;
                                            safeSetState(() {});

                                            context.pushNamed(
                                              Basketball62Widget.routeName,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .rightToLeft,
                                                  duration: Duration(
                                                      milliseconds: 300),
                                                ),
                                              },
                                            );
                                          } else {
                                            if (FFAppState().randomPage == 3) {
                                              FFAppState().wordCount =
                                                  FFAppState().wordCount + 1;
                                              safeSetState(() {});

                                              context.pushNamed(
                                                Cycling63Widget.routeName,
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType
                                                            .rightToLeft,
                                                    duration: Duration(
                                                        milliseconds: 300),
                                                  ),
                                                },
                                              );
                                            } else {
                                              if (FFAppState().randomPage ==
                                                  4) {
                                                FFAppState().wordCount =
                                                    FFAppState().wordCount + 1;
                                                safeSetState(() {});

                                                context.pushNamed(
                                                  Football64Widget.routeName,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .rightToLeft,
                                                      duration: Duration(
                                                          milliseconds: 300),
                                                    ),
                                                  },
                                                );
                                              } else {
                                                if (FFAppState().randomPage ==
                                                    5) {
                                                  FFAppState().wordCount =
                                                      FFAppState().wordCount +
                                                          1;
                                                  safeSetState(() {});

                                                  context.pushNamed(
                                                    Running65Widget.routeName,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .rightToLeft,
                                                        duration: Duration(
                                                            milliseconds: 300),
                                                      ),
                                                    },
                                                  );
                                                } else {
                                                  if (FFAppState().randomPage ==
                                                      6) {
                                                    FFAppState().wordCount =
                                                        FFAppState().wordCount +
                                                            1;
                                                    safeSetState(() {});

                                                    context.pushNamed(
                                                        Skating66Widget
                                                            .routeName);
                                                  } else {
                                                    if (FFAppState()
                                                            .randomPage ==
                                                        7) {
                                                      FFAppState().wordCount =
                                                          FFAppState()
                                                                  .wordCount +
                                                              1;
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                        Swimming67Widget
                                                            .routeName,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .rightToLeft,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    300),
                                                          ),
                                                        },
                                                      );
                                                    } else {
                                                      if (FFAppState()
                                                              .randomPage ==
                                                          8) {
                                                        FFAppState().wordCount =
                                                            FFAppState()
                                                                    .wordCount +
                                                                1;
                                                        safeSetState(() {});

                                                        context.pushNamed(
                                                          TableTennis68Widget
                                                              .routeName,
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .rightToLeft,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      300),
                                                            ),
                                                          },
                                                        );
                                                      } else {
                                                        if (FFAppState()
                                                                .randomPage ==
                                                            9) {
                                                          FFAppState()
                                                                  .wordCount =
                                                              FFAppState()
                                                                      .wordCount +
                                                                  1;
                                                          safeSetState(() {});

                                                          context.pushNamed(
                                                            Tennis69Widget
                                                                .routeName,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .rightToLeft,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        300),
                                                              ),
                                                            },
                                                          );
                                                        } else {
                                                          if (FFAppState()
                                                                  .randomPage ==
                                                              10) {
                                                            FFAppState()
                                                                    .wordCount =
                                                                FFAppState()
                                                                        .wordCount +
                                                                    1;
                                                            safeSetState(() {});

                                                            context.pushNamed(
                                                              Volleyball610Widget
                                                                  .routeName,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .rightToLeft,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          300),
                                                                ),
                                                              },
                                                            );
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    },
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.85,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFB29988),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 0.0,
                                            color: Color(0xFF7C4322),
                                            offset: Offset(
                                              4.0,
                                              4.0,
                                            ),
                                            spreadRadius: 0.0,
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 6.0),
                                                    child: AutoSizeText(
                                                      'Sport',
                                                      minFontSize: 14.0,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Kanit',
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Kanit'),
                                                          ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 75.0,
                                                    height: 25.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFC75E1B),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18.0),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        '10 คำ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Kanit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Kanit'),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 5.0, 55.0, 0.0),
                                              child: Container(
                                                width: 80.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF723B15),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: AuthUserStreamWidget(
                                                    builder: (context) => Text(
                                                      '${valueOrDefault<String>(
                                                        valueOrDefault(
                                                                currentUserDocument
                                                                    ?.scoreSport6,
                                                                0)
                                                            .toString(),
                                                        '0',
                                                      )} / คะแนน',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Kanit',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Kanit'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              child: Image.asset(
                                                'assets/images/sports_3311579.png',
                                                width: 55.0,
                                                height: 55.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 12.0)),
                              ),
                            ].addToEnd(SizedBox(height: 30.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
                child: SafeArea(
                  child: Container(
                    width: double.infinity,
                    height: 74.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                HomePageWidget.routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 1),
                                  ),
                                },
                              );
                            },
                            child: Container(
                              width: 72.0,
                              height: 50.0,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: Image.asset(
                                        'assets/images/element1.png',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'หน้าหลัก',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Kanit',
                                          color: Color(0xFFA9ABAD),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Kanit'),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 72.0,
                            height: 50.0,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 4.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.asset(
                                      'assets/images/book2.png',
                                      width: 24.0,
                                      height: 24.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  'บทเรียน',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Kanit',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Kanit'),
                                      ),
                                ),
                              ],
                            ).animateOnPageLoad(
                                animationsMap['columnOnPageLoadAnimation']!),
                          ),
                          Container(
                            width: 72.0,
                            height: 50.0,
                            decoration: BoxDecoration(),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  ProfileWidget.routeName,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.leftToRight,
                                      duration: Duration(milliseconds: 300),
                                    ),
                                  },
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: Image.asset(
                                        'assets/images/user.png',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'โปรไฟล์',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Kanit',
                                          color: Color(0xFFA9ABAD),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Kanit'),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
