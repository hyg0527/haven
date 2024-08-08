import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:haven/clickbutton.dart';

class EditProfile extends StatefulWidget {
  const EditProfile ({Key? key});
  
  @override
  State<StatefulWidget> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
                left: 103,
                top: 157,
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
              Positioned(
                left: 145,
                top: 364,
                child: ClickButton (
                  child: Container(
                    height: 44,
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFE5E5EA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '사진 올리기',
                          style: TextStyle(
                            color: Color(0xFF8E8E93),
                            fontSize: 16,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 24,
                top: 476,
                child: Text(
                  '닉네임',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 325,
                top: 466,
                child: Container(
                  width: 44,
                  height: 44,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 10,
                        child: Container(
                          width: 22,
                          height: 22,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFE5E5EA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: Center(  // Center 위젯을 사용하여 SVG 크기 조절
                            child: SizedBox(
                              width: 10,  // SVG의 너비를 지정
                              height: 10,  // SVG의 높이를 지정
                              child: SvgPicture.asset(
                                'assets/images/close_button.svg',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 24,
                top: 526,
                child: Text(
                  '사용할 수 있는 닉네임입니다.',
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
                left: 12,
                top: 62,
                child: GestureDetector (
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: SvgPicture.asset(
                            'assets/images/close_button.svg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 68,
                top: 67,
                child: Text(
                  '프로필 수정',
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
                left: 20,
                top: 700,
                child: ClickButton (
                  child: Container(
                    width: 352,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF33C284),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(56),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '수정하기',
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
              ),
            ],
          ),
        ),
    );
  }

}