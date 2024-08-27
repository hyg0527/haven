import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GrayTextField extends StatefulWidget {
  final String hintText;
  final double width;
  final bool isPassword;

  const GrayTextField(
      {super.key,
      required this.hintText,
      required this.width,
      required this.isPassword});

  @override
  State<StatefulWidget> createState() => _TextFieldState();
}

class _TextFieldState extends State<GrayTextField> {
  bool _isObsecured = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isObsecured = !_isObsecured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width, // 상대적인 크기로 설정
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      decoration: ShapeDecoration(
        color: const Color(0xFFF2F2F7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              obscureText: widget.isPassword && _isObsecured,
              decoration: InputDecoration(
                hintText: widget.hintText,
                border: InputBorder.none,
                hintStyle: const TextStyle(
                    color: Color(0xFF8E8E93),
                    fontSize: 16,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          widget.isPassword
              ? GestureDetector(
                  onTap: _togglePasswordVisibility,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(),
                    child: SvgPicture.asset(
                      _isObsecured
                          ? 'assets/images/eye_off.svg'
                          : 'assets/images/eye_on.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
