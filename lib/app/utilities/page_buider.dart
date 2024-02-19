import 'package:flutter/material.dart';

class PageBuilder<T> extends PageRouteBuilder<T> {
  PageBuilder(Widget page,
      [RouteSettings? settings,
      bool maintainState = true,
      bool fullscreenDialog = false])
      : super(
            pageBuilder: (_, __, ___) => page,
            settings: settings,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (animation.status == AnimationStatus.reverse) {
      return super
          .buildTransitions(context, animation, secondaryAnimation, child);
    }
    return FadeTransition(opacity: animation, child: child);
  }
}

// class MaterialPageBuilder<T> extends MaterialPageRoute<T> {
//   MaterialPageBuilder(Widget page,
//       [RouteSettings? settings,
//       bool maintainState = true,
//       bool fullscreenDialog = false])
//       : super(
//           builder: (_) => page,
//           settings: settings,
//           maintainState: maintainState,
//           fullscreenDialog: fullscreenDialog,
//         );

//   @override
//   Widget buildTransitions(BuildContext context, Animation<double> animation,
//       Animation<double> secondaryAnimation, Widget child) {
//     if (animation.status == AnimationStatus.reverse) {
//       return super
//           .buildTransitions(context, animation, secondaryAnimation, child);
//     }
//     return FadeTransition(opacity: animation, child: child);
//   }
// }
class MaterialPageBuilder<T> extends MaterialPageRoute<T> {
  MaterialPageBuilder(Widget page,
      {RouteSettings? settings,
      bool maintainState = true,
      bool fullscreenDialog = false})
      : super(
          builder: (_) => page,
        );

  MaterialPageBuilder.showFullScreenDialog(
    Widget page, {
    super.settings,
  }) : super(
          builder: (_) => page,
          maintainState: true,
          fullscreenDialog: true,
        );
}
