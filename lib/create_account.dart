import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haven/check_account.dart';
import 'package:haven/clickbutton.dart';
import 'package:haven/textfield_gray.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<StatefulWidget> createState() => _CreateAccountScreen();
}

class _CreateAccountScreen extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
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
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "회원님만의\n",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: "계정",
                        style: TextStyle(
                          color: Color(0xFF33C284),
                          fontSize: 24,
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: "을 만들어주세요.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 56),
                const Text(
                  '아이디',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                GrayTextField(
                    hintText: '이메일을 입력해주세요',
                    width: screenWidth * 0.9,
                    isPassword: false),
                const SizedBox(height: 20),
                const Text(
                  '비밀번호',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                GrayTextField(
                    hintText: '비밀번호를 입력해주세요',
                    width: screenWidth * 0.9,
                    isPassword: true),
                const SizedBox(height: 20),
                const Text(
                  '비밀번호 확인',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                GrayTextField(
                    hintText: '비밀번호를 다시 입력해주세요',
                    width: screenWidth * 0.9,
                    isPassword: true),
                const SizedBox(height: 8),
                SizedBox(
                  width: 100,
                  height: 24,
                  child: SvgPicture.asset(
                    'assets/images/pw_correct.svg',
                    fit: BoxFit.cover,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: ClickButton(
                    secondScreen: const CheckAccount(),
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
                        '회원가입하기',
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
      ),
    );
  }
}
