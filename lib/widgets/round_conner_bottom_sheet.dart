import 'package:flutter/material.dart';

class RoundConnerBototmSheet extends StatelessWidget {
  Widget child;

  RoundConnerBototmSheet(this.child);

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.transparent,
      child: new Container(
          decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(10.0),
                  topRight: const Radius.circular(10.0))),
          child: child),
    );
  }
}
