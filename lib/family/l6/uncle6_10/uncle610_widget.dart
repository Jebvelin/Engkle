import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'uncle610_model.dart';
export 'uncle610_model.dart';

class Uncle610Widget extends StatefulWidget {
  const Uncle610Widget({super.key});

  static String routeName = 'Uncle6-10';
  static String routePath = '/uncle610';

  @override
  State<Uncle610Widget> createState() => _Uncle610WidgetState();
}

class _Uncle610WidgetState extends State<Uncle610Widget>
    with TickerProviderStateMixin {
  late Uncle610Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Uncle610Model());

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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: Align(
          alignment: AlignmentDirectional(1.0, 0.0),
          child: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
        ),
        title: Text(
          'Family',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Poppins',
                letterSpacing: 0.0,
                useGoogleFonts: GoogleFonts.asMap().containsKey('Poppins'),
              ),
        ),
        actions: [
          Align(
            alignment: AlignmentDirectional(1.0, -1.0),
            child: FlutterFlowIconButton(
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              fillColor: Color(0x00FFD000),
              icon: FaIcon(
                FontAwesomeIcons.arrowRight,
                color: Colors.black,
                size: 25.0,
              ),
              onPressed: () async {
                if (FFAppState().wordCount == 10) {
                  context.pushNamed(
                    ScoreFamily6Widget.routeName,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 300),
                      ),
                    },
                  );

                  FFAppState().wordCount = 0;
                  safeSetState(() {});
                  FFAppState().usedNumbers = [];
                  safeSetState(() {});
                } else {
                  FFAppState().randomPage = functions
                      .randomPageNumber(FFAppState().usedNumbers.toList());
                  safeSetState(() {});
                  FFAppState().addToUsedNumbers(FFAppState().randomPage);
                  safeSetState(() {});
                  if (FFAppState().randomPage == 1) {
                    FFAppState().wordCount = FFAppState().wordCount + 1;
                    safeSetState(() {});

                    context.pushNamed(
                      Aunt61Widget.routeName,
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 300),
                        ),
                      },
                    );
                  } else {
                    if (FFAppState().randomPage == 2) {
                      FFAppState().wordCount = FFAppState().wordCount + 1;
                      safeSetState(() {});

                      context.pushNamed(
                        Brother62Widget.routeName,
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 300),
                          ),
                        },
                      );
                    } else {
                      if (FFAppState().randomPage == 3) {
                        FFAppState().wordCount = FFAppState().wordCount + 1;
                        safeSetState(() {});

                        context.pushNamed(
                          Cousin63Widget.routeName,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 300),
                            ),
                          },
                        );
                      } else {
                        if (FFAppState().randomPage == 4) {
                          FFAppState().wordCount = FFAppState().wordCount + 1;
                          safeSetState(() {});

                          context.pushNamed(
                            Family64Widget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 300),
                              ),
                            },
                          );
                        } else {
                          if (FFAppState().randomPage == 5) {
                            FFAppState().wordCount = FFAppState().wordCount + 1;
                            safeSetState(() {});

                            context.pushNamed(
                              Father65Widget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 300),
                                ),
                              },
                            );
                          } else {
                            if (FFAppState().randomPage == 6) {
                              FFAppState().wordCount =
                                  FFAppState().wordCount + 1;
                              safeSetState(() {});

                              context.pushNamed(Grandfather66Widget.routeName);
                            } else {
                              if (FFAppState().randomPage == 7) {
                                FFAppState().wordCount =
                                    FFAppState().wordCount + 1;
                                safeSetState(() {});

                                context.pushNamed(
                                  Grandmother67Widget.routeName,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 300),
                                    ),
                                  },
                                );
                              } else {
                                if (FFAppState().randomPage == 8) {
                                  FFAppState().wordCount =
                                      FFAppState().wordCount + 1;
                                  safeSetState(() {});

                                  context.pushNamed(
                                    Mother68Widget.routeName,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                        duration: Duration(milliseconds: 300),
                                      ),
                                    },
                                  );
                                } else {
                                  if (FFAppState().randomPage == 9) {
                                    FFAppState().wordCount =
                                        FFAppState().wordCount + 1;
                                    safeSetState(() {});

                                    context.pushNamed(
                                      Sister69Widget.routeName,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 300),
                                        ),
                                      },
                                    );
                                  } else {
                                    if (FFAppState().randomPage == 10) {
                                      FFAppState().wordCount =
                                          FFAppState().wordCount + 1;
                                      safeSetState(() {});

                                      context.pushNamed(
                                        Uncle610Widget.routeName,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.rightToLeft,
                                            duration:
                                                Duration(milliseconds: 300),
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
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: CachedNetworkImage(
                                fadeInDuration: Duration(milliseconds: 500),
                                fadeOutDuration: Duration(milliseconds: 500),
                                imageUrl:
                                    'https://images.unsplash.com/flagged/photo-1556075952-97e79fff5d8d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMnx8VW5jbGV8ZW58MHx8fHwxNzM1MTg0NDEzfDA&ixlib=rb-4.0.3&q=80&w=1080',
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                height: 250.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Uncle',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Kanit',
                                  fontSize: 40.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Kanit'),
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'ลุง / อา / น้า',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Kanit',
                                  color: Colors.black,
                                  fontSize: 30.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Kanit'),
                                ),
                          ),
                        ),
                      ),
                      StyledDivider(
                        height: 36.0,
                        thickness: 10.0,
                        color: Color(0xFFFCCF7C),
                        lineStyle: DividerLineStyle.dashed,
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 40.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await actions.textToSpeech(
                                'Uncle',
                              );
                            },
                            text: '',
                            icon: Icon(
                              Icons.headphones_rounded,
                              size: 35.0,
                            ),
                            options: FFButtonOptions(
                              width: 130.0,
                              height: 60.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconAlignment: IconAlignment.start,
                              iconPadding: EdgeInsets.all(0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .displaySmallFamily,
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .displaySmallFamily),
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await requestPermission(microphonePermission);
                            _model.status = await actions.speechToText(
                              'Uncle',
                            );
                            await Future.delayed(
                                const Duration(milliseconds: 100));
                            FFAppState().result = _model.status!;
                            if (FFAppState().result == 'เยี่ยมมาก!') {
                              FFAppState().scoreFamily =
                                  FFAppState().scoreFamily + 1;
                              safeSetState(() {});

                              await currentUserReference!
                                  .update(createPropertiesRecordData(
                                scoreFamily6: FFAppState().scoreFamily,
                              ));
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'คุณได้คะแนนแล้ว!!',
                                    style: GoogleFonts.getFont(
                                      'Kanit',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontWeight: FontWeight.w800,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).success,
                                ),
                              );
                              if (FFAppState().wordCount == 10) {
                                context.pushNamed(
                                  ScoreFamily6Widget.routeName,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 300),
                                    ),
                                  },
                                );

                                FFAppState().wordCount = 0;
                                safeSetState(() {});
                                FFAppState().usedNumbers = [];
                                safeSetState(() {});
                              } else {
                                FFAppState().randomPage =
                                    functions.randomPageNumber(
                                        FFAppState().usedNumbers.toList());
                                safeSetState(() {});
                                FFAppState()
                                    .addToUsedNumbers(FFAppState().randomPage);
                                safeSetState(() {});
                                if (FFAppState().randomPage == 1) {
                                  FFAppState().wordCount =
                                      FFAppState().wordCount + 1;
                                  safeSetState(() {});

                                  context.pushNamed(
                                    Aunt61Widget.routeName,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                        duration: Duration(milliseconds: 300),
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
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 300),
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
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.rightToLeft,
                                            duration:
                                                Duration(milliseconds: 300),
                                          ),
                                        },
                                      );
                                    } else {
                                      if (FFAppState().randomPage == 4) {
                                        FFAppState().wordCount =
                                            FFAppState().wordCount + 1;
                                        safeSetState(() {});

                                        context.pushNamed(
                                          Family64Widget.routeName,
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
                                      } else {
                                        if (FFAppState().randomPage == 5) {
                                          FFAppState().wordCount =
                                              FFAppState().wordCount + 1;
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
                                                duration:
                                                    Duration(milliseconds: 300),
                                              ),
                                            },
                                          );
                                        } else {
                                          if (FFAppState().randomPage == 6) {
                                            FFAppState().wordCount =
                                                FFAppState().wordCount + 1;
                                            safeSetState(() {});

                                            context.pushNamed(
                                                Grandfather66Widget.routeName);
                                          } else {
                                            if (FFAppState().randomPage == 7) {
                                              FFAppState().wordCount =
                                                  FFAppState().wordCount + 1;
                                              safeSetState(() {});

                                              context.pushNamed(
                                                Grandmother67Widget.routeName,
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
                                                  8) {
                                                FFAppState().wordCount =
                                                    FFAppState().wordCount + 1;
                                                safeSetState(() {});

                                                context.pushNamed(
                                                  Mother68Widget.routeName,
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
                                                    9) {
                                                  FFAppState().wordCount =
                                                      FFAppState().wordCount +
                                                          1;
                                                  safeSetState(() {});

                                                  context.pushNamed(
                                                    Sister69Widget.routeName,
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
                                                      10) {
                                                    FFAppState().wordCount =
                                                        FFAppState().wordCount +
                                                            1;
                                                    safeSetState(() {});

                                                    context.pushNamed(
                                                      Uncle610Widget.routeName,
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
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'ลองใหม่น้า!!',
                                    style: GoogleFonts.getFont(
                                      'Kanit',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontWeight: FontWeight.w800,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).error,
                                ),
                              );
                            }

                            await Future.delayed(
                                const Duration(milliseconds: 100));

                            safeSetState(() {});
                          },
                          text: '',
                          icon: Icon(
                            Icons.mic,
                            size: 35.0,
                          ),
                          options: FFButtonOptions(
                            width: 130.0,
                            height: 60.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconAlignment: IconAlignment.start,
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .displaySmallFamily,
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .displaySmallFamily),
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 88.0,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                          child: InkWell(
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
                                    transitionType:
                                        PageTransitionType.bottomToTop,
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
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFA9ABAD),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Poppins'),
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
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
                              Category6Widget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.bottomToTop,
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
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Poppins'),
                                    ),
                              ),
                            ],
                          ),
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
                                      PageTransitionType.bottomToTop,
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
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFA9ABAD),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Poppins'),
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
        ],
      ),
    );
  }
}
