import 'package:flutter/material.dart';
import 'package:haven/create_account.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390,
          height: 844,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 390,
                  height: 47,
                  padding: const EdgeInsets.only(
                    top: 17,
                    left: 23,
                    right: 18,
                    bottom: 14,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '   9:41',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 0.07,
                                letterSpacing: -0.50,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 39,
                              height: 12.50,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0.25,
                                    child: Container(
                                      width: 17,
                                      height: 12,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage("https://via.placeholder.com/17x12"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 22,
                                    top: 0,
                                    child: Container(
                                      width: 17,
                                      height: 12.50,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage("https://via.placeholder.com/17x12"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 5),
                            Container(
                              width: 25,
                              height: 12,
                              child: FlutterLogo(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 810,
                child: Container(
                  width: 390,
                  height: 34,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 390,
                        height: 34,
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 128,
                          right: 128,
                          bottom: 9,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 392,
                child: Container(
                  width: 352,
                  height: 52,
                  padding: const EdgeInsets.only(
                    top: 16,
                    left: 20,
                    right: 8,
                    bottom: 16,
                  ),
                  decoration: ShapeDecoration(
                    color: Color(0xFFF2F2F7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '비밀번호를 입력해주세요',
                        style: TextStyle(
                          color: Color(0xFF8E8E93),
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          height: 0.07,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 44,
                        height: 44,
                        padding: const EdgeInsets.all(10),
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 285,
                child: Container(
                  width: 352,
                  height: 52,
                  padding: const EdgeInsets.only(
                    top: 16,
                    left: 20,
                    right: 8,
                    bottom: 16,
                  ),
                  decoration: ShapeDecoration(
                    color: Color(0xFFF2F2F7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '이메일을 입력해주세요',
                        style: TextStyle(
                          color: Color(0xFF8E8E93),
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          height: 0.07,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 44,
                        height: 44,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: FlutterLogo(),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 361,
                child: Text(
                  '비밀번호',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                    height: 0.07,
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 254,
                child: Text(
                  '아이디',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                    height: 0.07,
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 740,
                child: Container(
                  width: 352,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  decoration: ShapeDecoration(
                    color: Color(0xFF33C284),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(56),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '로그인하기',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 96,
                top: 672,
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '계정이 없으신가요?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF8E8E93),
                          fontSize: 14,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 0.10,
                        ),
                      ),
                      const SizedBox(width: 3),
                      GestureDetector(  // 터치 가능한 위젯으로 변경
                        onTap: () {
                          // 회원가입 화면으로 이동
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreateAccountScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "회원가입",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF33C284),
                            fontSize: 14,
                            fontFamily: "Pretendard",
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                            height: 0.10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 127,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "환영합니다!\n",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.w700,
                          height: 0.06,
                        ),
                      ),
                      TextSpan(
                        text: "로그인",
                        style: TextStyle(
                          color: Color(0xFF33C284),
                          fontSize: 24,
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.w700,
                          height: 0.06,
                        ),
                      ),
                      TextSpan(
                        text: "을 해주세요.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.w700,
                          height: 0.06,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}