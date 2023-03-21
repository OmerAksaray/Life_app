import 'package:flutter/material.dart';

class forGender extends StatelessWidget {
  final String? genderText;
  final Color? defaults;
  final IconData? cinsiyet;
  const forGender({
    super.key,
    this.genderText,
    this.defaults,
    this.cinsiyet,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        cinsiyet,
        color: defaults,
        size: 50,
      ),
      SizedBox(
        height: 10,
      ),
      Text(genderText!),
    ]);
  }
}
