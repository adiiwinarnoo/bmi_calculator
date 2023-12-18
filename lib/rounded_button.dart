import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
   RoundedIconButton({super.key,required this.icon, required this.onPress});

   final Icon icon;
   final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: icon,
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}