import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:haven/clickbutton.dart';
import 'package:haven/edit_profile.dart';

class SeatList extends StatefulWidget {
  const SeatList ({Key? key});
  
  @override
  State<StatefulWidget> createState() => _SeatListState();
}

class _SeatListState extends State<SeatList> {
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

              // 백 버튼 
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 390,
                  height: 117,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: [
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
                                    'assets/images/back_button.svg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // 타이틀 
                      const Positioned(
                        left: 68,
                        top: 67,
                        child: Text(
                          '자리 선택',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // 자리 선택 Container
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
                          '자리 선택하기',
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

              // 선택한 자리
                const Positioned(
                left: 24,
                top: 612,
                child: Text(
                  '선택한 자리',
                  style: TextStyle(
                    color: Color(0xFF8E8E93),
                    fontSize: 16,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),

              // 지정된 자리 표시
              const Positioned(
                left: 24,
                top: 640,
                child: Text(
                  '01번',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),

                // 출입구는 계산에서 제외
                Positioned(
                left: 28,
                top: 125,
                child: Container(
                  width: 92,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: Color(0xFFF2F2F7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '출입구',
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
                ),
              ),

      Padding(
        padding: const EdgeInsets.fromLTRB(28,175,0,0),
        child: Column(
          children: List.generate(6, (index) {
            // 간격을 줄을 구분하여 설정합니다
            bool isSpacingRequired = index % 2 == 0; // 짝수 줄에만 간격을 추가 (예시)

            return Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7, // 원하는 Container의 개수
                    itemBuilder: (context, innerIndex) {
                      // index를 사용하여 숫자 생성 (각 줄마다 연속된 숫자를 생성)
                      String text = (innerIndex + (index * 7) + 1).toString().padLeft(2, '0');
                      return Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF2F2F7),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                text,
                                style: const TextStyle(
                                  color: Color(0xFF8E8E93),
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 4),
                        ],
                      );
                    },
                  ),
                ),
                // 줄과 줄 사이에 간격을 추가합니다
                SizedBox(height: 5), // 원하는 줄 간격
                if (isSpacingRequired) SizedBox(height: 35), // 조건에 따라 간격 추가
              ],
            );
          }),
        ),
      ),





            ],
          ),
        ),
    );
  }
}