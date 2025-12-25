import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIcon {
  // Base asset paths
  static const String _pngPath = 'assets/image/';
  static const String _svgPath = 'assets/svg/';

  // PNG Icons
  static const String facebook = '${_pngPath}facebook.png';
  static const String google = '${_pngPath}google.png';

  // SVG Icons
  static const String home = '${_svgPath}home.svg';
  static const String favorite = '${_svgPath}favorite.svg';
  static const String message = '${_svgPath}message.svg';
  static const String user = '${_svgPath}user.svg';
  static const String add = '${_svgPath}add.svg';
  static const String location = '${_svgPath}location.svg';

  /// SVG Icon Widget Helper
  static Widget svg(
    String path, {
    double size = 24,
    Color? color,
    ColorFilter? colorFilter,
  }) {
    return SvgPicture.asset(
      path,
      width: size,
      height: size,
      colorFilter:
          colorFilter ??
          (color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null),
    );
  }

  /// PNG Icon Widget Helper
  static Widget png(
    String path, {
    double size = 24,
    BoxFit fit = BoxFit.contain,
  }) {
    return Image.asset(path, width: size, height: size, fit: fit);
  }
}
