import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:ui' as ui;
import 'dart:math' as Math;

class Device {
  static double devicePixelRatio =
      ui.window.devicePixelRatio; // Gets our pixel count
  static ui.Size size = ui.window.physicalSize; // The entire size of the phone
  static double width = size.width; //
  static double height = size.height;
  static double screenWidth = width / devicePixelRatio;
  static double screenHeight = height / devicePixelRatio;
  static ui.Size screenSize = new ui.Size(screenWidth, screenHeight);

  final bool isTablet,
      isPhone,
      isAndroid,
      hasNotch; // The different device types We are interested in. This willprobably be added to eventually

  static Device? _device; // ? denotes that the type can be null
  static Function? onMetricsChange;

  static double _safeAreaHorizontal = 0.0; // space without headers/footer
  static double _safeAreaVertical = 0.0; // ^^ i.e. our positional space
  static double safeBlockHorizontal = 0.0; // Our positions in that space
  static double safeBlockVertical = 0.0;

  static const Color backroundCOLOR = Color(0xffc5c0ad);

  // We need to know what device we are running on
  Device(
      {required this.isTablet,
      required this.isPhone,
      required this.isAndroid,
      required this.hasNotch});

  factory Device.get() {
    if (_device != null) return _device!;

    // onMetricsChange lets us know if our orientation has flipped
    if (onMetricsChange == null) {
      onMetricsChange = ui.window.onMetricsChanged;
      ui.window.onMetricsChanged = () {
        _device = null; // our old stored metrics no longer apply

        // repopulate the screen data
        size = ui.window.physicalSize;
        width = size.width;
        height = size.height;
        screenWidth = width / devicePixelRatio;
        screenHeight = height / devicePixelRatio;
        screenSize = new ui.Size(screenWidth, screenHeight);

        onMetricsChange!();
      };
    }

    bool isTablet;
    bool isPhone;
    bool isAndroid = Platform.isAndroid;
    bool hasNotch = false;

    // The DPR is measured in physical pixels not logical pixels
    if (devicePixelRatio < 2 && (width >= 1000 || height >= 1000)) {
      isTablet = true;
      isPhone = false;
    } else if (devicePixelRatio == 2 && (width >= 1920 || height >= 1920)) {
      isTablet = true;
      isPhone = false;
    } else {
      isTablet = false;
      isPhone = true;
    }

    // Recalculate for Android Tablet using device inches
    if (isAndroid) {
      final adjustedWidth = _calWidth() / devicePixelRatio;
      final adjustedHeight = _calHeight() / devicePixelRatio;
      final diagonalSizeInches = (Math.sqrt(
              Math.pow(adjustedWidth, 2) + Math.pow(adjustedHeight, 2))) /
          _ppi;
      //print("Dialog size inches is $diagonalSizeInches");
      if (diagonalSizeInches >= 7) {
        isTablet = true;
        isPhone = false;
      } else {
        isTablet = false;
        isPhone = true;
      }
    }

    if (isPhone &&
        (screenHeight == 812 ||
            screenWidth == 812 ||
            screenHeight == 896 ||
            screenWidth == 896 ||
            // iPhone 12 pro
            screenHeight == 844 ||
            screenWidth == 844 ||
            // Iphone 12 pro max
            screenHeight == 926 ||
            screenWidth == 926)) {
      hasNotch = true;
    }

    if (_hasTopOrBottomPadding()) hasNotch = true;

    return _device = new Device(
        isTablet: isTablet,
        isPhone: isPhone,
        isAndroid: isAndroid,
        hasNotch: hasNotch);
  }

  static void init() {
    final padding = ui.window.viewPadding;
    _safeAreaHorizontal = padding.left + padding.right;
    _safeAreaVertical = padding.top + padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }

  static double _calWidth() {
    if (width > height)
      return (width +
          (ui.window.viewPadding.left + ui.window.viewPadding.right) *
              width /
              height);
    return (width + ui.window.viewPadding.left + ui.window.viewPadding.right);
  }

  static double _calHeight() {
    return (height +
        (ui.window.viewPadding.top + ui.window.viewPadding.bottom));
  }

  // ppi = pixels per inch
  static int get _ppi => Platform.isAndroid
      ? 160
      : Platform.isIOS
          ? 150
          : 96;

  // Do we have a appbar or footer establised on this page? Used to subtract these values from screen height
  static bool _hasTopOrBottomPadding() {
    final padding = ui.window.viewPadding;
    //print(padding);
    return padding.top > 0 || padding.bottom > 0;
  }
}
