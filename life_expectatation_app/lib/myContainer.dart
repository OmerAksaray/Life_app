import 'package:flutter/material.dart';

class square extends StatelessWidget {
  final int i;
  final Widget? veled;
  const square({
    super.key,
    this.i = 1,
    this.veled,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: i,
      child: Container(
        child: veled,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
      ),
    );
  }
}
