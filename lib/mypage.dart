import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyPage extends StatefulWidget {
  const MyPage ({Key? key});
  
  @override
  State<StatefulWidget> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Container(
          width: 390,
          height: 844,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 7,
                top: 51,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                        child: SvgPicture.asset(
                          'assets/images/back_button.svg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 0,
                top: 810,
                child: SizedBox(
                  width: 390,
                  height: 34,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(width: 390, height: 34, child: Stack()),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 108,
                top: 187,
                child: Container(
                  width: 179,
                  height: 179,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFE5E5EA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(72),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 164,
                top: 390,
                child: Text(
                  '닉네임',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              const Positioned(
                left: 92,
                top: 435,
                child: Text(
                  'qwertyuiopasdfg@kookmin.ac.kr',
                  style: TextStyle(
                    color: Color(0xFF8E8E93),
                    fontSize: 14,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 729,
                child: Container(
                  width: 393,
                  height: 67,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: const Stack(
                    children: [
                      Positioned(
                        left: 24,
                        top: 0,
                        child: Text(
                          '로그아웃',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 700,
                child: Container(
                  width: 360,
                  height: 0.5,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    color: Color(0xFFE5E5EA),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 24,
                        child: SvgPicture.asset(
                          'assets/images/divider.svg',
                          fit: BoxFit.cover,
                        ),
                        ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 68,
                top: 67,
                child: Text(
                  '마이페이지',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 318,
                top: 111,
                child: Container(
                  height: 36,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFE5E5EA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '수정',
                        style: TextStyle(
                          color: Color(0xFF8E8E93),
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}