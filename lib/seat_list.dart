import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:haven/seat.dart';

class SeatList extends StatefulWidget {
  const SeatList({Key? key});

  @override
  State<StatefulWidget> createState() => _SeatListState();
}

class _SeatListState extends State<SeatList> {
  int? selectedSeat; // 선택된 자리 번호를 저장
  Set<int> disabledSeats = {}; // 비활성화된 좌석 번호를 저장하는 Set

  // 좌석 선택 시 선택된 자리 번호를 저장
  void selectSeat(int seatNumber) {
    setState(() {
      selectedSeat = seatNumber;
    });
  }

  // '자리 선택하기' 버튼 클릭 시 실행
  void confirmSeatSelection() {
    if (selectedSeat != null) {
      setState(() {
        disabledSeats.add(selectedSeat!); // 선택된 좌석을 비활성화 목록에 추가
        selectedSeat = null; // 선택 초기화
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double seatGridWidth = MediaQuery.of(context).size.width * 0.75;
    // 출입구 칸의 왼쪽 여백을 좌석 너비로 맞춤
    double entryLeftPadding = (MediaQuery.of(context).size.width - seatGridWidth) / 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '자리 선택',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: entryLeftPadding), // 좌석과 동일한 여백 적용
                Container(
                  width: 94,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF2F2F7),
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
              ],
            ),
            const SizedBox(height: 20),
            SeatGrid(
              selectedSeat: selectedSeat,
              onSeatSelected: selectSeat,
              disabledSeats: disabledSeats, // 비활성화된 좌석 전달
            ),
            const SizedBox(height: 30),
            Container(
              width: seatGridWidth,
              height: 1.0,
              color: const Color.fromARGB(255, 202, 202, 204),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SvgPicture.asset(
                  'assets/images/divider.svg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 55),
                Text(
                  '선택한 자리',
                  style: TextStyle(
                    color: Color(0xFF8E8E93),
                    fontSize: 16,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 55),
                Text(
                  selectedSeat != null
                      ? '${selectedSeat!.toString().padLeft(2, '0')}번'
                      : '선택 없음',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: confirmSeatSelection, // 버튼 클릭 시 좌석 선택 확정
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
          ],
        ),
      ),
    );
  }
}
