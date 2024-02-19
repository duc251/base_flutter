import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';


class AppScale {
  final BuildContext context;
  const AppScale(this.context);
  

  static const double defaultPadding = 15;
  static const double heightFlatButton = 45;

  static const double originalWidth = 360; 
  static const double originalHeight = 640; 

  static late  double scaleWidth;
  static late  double scaleHeight;

  void init() {
    final Size getSize = MediaQuery.of(context).size;
    final double getWidth = MediaQuery.of(context).size.width;
    final double getHeight = MediaQuery.of(context).size.height;

    final DeviceScreenType deviceScreenType = SizingInformation(
      deviceScreenType: getDeviceType(getSize),
      refinedSize: getRefinedSize(
        getSize,
      ),
      screenSize: getSize,
      localWidgetSize: getSize,
    ).deviceScreenType;

    scaleWidth = getWidth / originalWidth;
    scaleHeight = getHeight / originalHeight;
    fontScale = deviceScreenType == DeviceScreenType.mobile ? scale : scaleHeight;
  }

  static double scale = scaleWidth < scaleHeight ? scaleWidth : scaleHeight;
  static double? scaleVertical = scaleHeight;
  static double? scaleHorizontal = scaleWidth;
  static double fontScale = 1;

  
}
