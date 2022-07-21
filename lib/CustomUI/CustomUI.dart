import 'package:flutter/cupertino.dart';

Widget customBox({double height = 0.0, double width = 0.0}) {
  return SizedBox(height: height, width: width);
}

double phoneHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double phoneWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
