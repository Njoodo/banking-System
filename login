import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget>
    with TickerProviderStateMixin {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 1,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    _model.emailAddressTextController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 80.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 16),
                child: Text(
                  'IMAM BANK',
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.8,
                      constraints: BoxConstraints(
                        maxWidth: 530,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: Column(
                          children: [
                            Expanded(
                              child: TabBarView(
                                controller: _model.tabBarController,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, -1),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24, 16, 24, 0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                            ))
                                              Container(
                                                width: 230,
                                                height: 16,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                              ),
                                            Text(
                                              'Welcome to IMAM BANK ',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 4, 0, 24),
                                              child: Text(
                                                'Fill out the information below in order to access your account.',
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 16),
                                              child: Container(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .emailAddressTextController,
                                                  focusNode: _model
                                                      .emailAddressFocusNode,
                                                  autofocus: true,
                                                  autofillHints: [
                                                    AutofillHints.email
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Enter your ID',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    filled: true,
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                24, 24, 0, 24),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  validator: _model
                                                      .emailAddressTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 16),
                                              child: Container(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .passwordTextController,
                                                  focusNode:
                                                      _model.passwordFocusNode,
                                                  autofocus: true,
                                                  autofillHints: [
                                                    AutofillHints.password
                                                  ],
                                                  obscureText: !_model
                                                      .passwordVisibility,
                                                  decoration: InputDecoration(
                                                    labelText: 'Password',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    filled: true,
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                24, 24, 0, 24),
                                                    suffixIcon: InkWell(
                                                      onTap: () => safeSetState(
                                                        () => _model
                                                                .passwordVisibility =
                                                            !_model
                                                                .passwordVisibility,
                                                      ),
                                                      focusNode: FocusNode(
                                                          skipTraversal: true),
                                                      child: Icon(
                                                        _model.passwordVisibility
                                                            ? Icons
                                                                .visibility_outlined
                                                            : Icons
                                                                .visibility_off_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24,
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  validator: _model
                                                      .passwordTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 16),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    context.pushNamed(
                                                        'VerifyForLogin');
                                                  },
                                                  text: 'Login',
                                                  options: FFButtonOptions(
                                                    width: 230,
                                                    height: 52,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 3,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 16),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    context.pushNamed(
                                                        'forgetpass');
                                                  },
                                                  text: 'Forgot Password?',
                                                  options: FFButtonOptions(
                                                    height: 44,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                32, 0, 32, 0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                    elevation: 0,
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                    hoverColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'columnOnPageLoadAnimation']!),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment(0, 0),
                              child: FlutterFlowButtonTabBar(
                                useToggleButtonStyle: true,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                unselectedLabelStyle:
                                    FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                labelColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                unselectedBackgroundColor:
                                    FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                unselectedBorderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2,
                                borderRadius: 12,
                                elevation: 0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    16, 0, 16, 0),
                                buttonMargin: EdgeInsetsDirectional.fromSTEB(
                                    12, 0, 12, 0),
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 0, 16, 0),
                                tabs: [
                                  Tab(),
                                ],
                                controller: _model.tabBarController,
                                onTap: (i) async {
                                  [() async {}][i]();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation']!),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}