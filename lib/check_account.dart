import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haven/clickbutton.dart';

class CheckAccount extends StatefulWidget {
  const CheckAccount({super.key});

  @override
  State<StatefulWidget> createState() => _CheckAccount();
}

class _CheckAccount extends State<CheckAccount> {
  @override
  Widget build(BuildContext context) {
    // 화면의 크기를 가져옴
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final statusBarHeight = MediaQuery.of(context).padding.top; // 상태바 높이

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          height: screenHeight - statusBarHeight - kToolbarHeight,
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 168),
              SizedBox(
                width: 80,
                height: 80,
                child: SvgPicture.asset(
                  'assets/images/check_icon.svg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                '가입완료!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 52),
                child: ClickButton(
                  isCircle: true,
                  child: Container(
                    width: screenWidth * 0.9,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 16),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF33C284),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(56),
                      ),
                    ),
                    child: const Text(
                      '로그인하기',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
