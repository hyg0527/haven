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
          width: double.infinity,
          height: double.infinity,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              const SizedBox(height: 58),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 20),
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
                    const SizedBox(width: 25),
                    const Text(
                      '프로필 수정',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 140),
              Container(
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
              const SizedBox(height: 30),
              ClickButton (
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
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 40),
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
                Padding(
                  padding: const EdgeInsets.only(right: 20),
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
                  ],
                ),
                  Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 1.0,
              color: Color.fromARGB(255, 224, 224, 224),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SvgPicture.asset(
                  'assets/images/divider.svg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
                ],
              ),
                const SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 40),
                   Text(
                  '사용할 수 있는 닉네임입니다.',
                  style: TextStyle(
                    color: Color(0xFF8E8E93),
                    fontSize: 14,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                  ],
                ),
              const Spacer(),
              ClickButton (
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                                          decoration: ShapeDecoration(
                        color: const Color(0xFF33C284),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
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
                const SizedBox(height: 40),
            ],
          ),
        ),
    );
  }

}