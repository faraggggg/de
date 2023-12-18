// components.dart

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

const Color fdefaultColor = Color(0xFF30F020);
const Color sdefaultcolor = Color(0xFF959E95);
const Color tdefaultcolor = Color(0xFFD9D9D9);

final TextEditingController phoneController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController nameController = TextEditingController();
final TextEditingController ageController = TextEditingController();

class StyledElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color color;

  const StyledElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
          return color;
        }),
      ),
      child: Text(text),
    );
  }
}

Widget DefaultButton({
  double width = 336,
  Color background = fdefaultColor,
  double height = 56,
  double radius = 5,
  required VoidCallback function,
  required String text,
  bool isUpper = true,
}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: background,
      borderRadius: BorderRadius.all(Radius.circular(radius)),
    ),
    child: TextButton(
      onPressed: function,
      child: Text(
        isUpper ? text.toUpperCase() : text,
        style: GoogleFonts.outfit(
            fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
      ),
    ),
  );
}

// Other components...

