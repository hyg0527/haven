import 'package:flutter/material.dart';

class SeatGrid extends StatelessWidget {
  final int? selectedSeat;
  final Function(int) onSeatSelected;

  const SeatGrid({
    super.key,
    required this.selectedSeat,
    required this.onSeatSelected,
  });

  @override
  Widget build(BuildContext context) {
    // 화면 크기에 맞춰 좌석의 너비와 높이 설정 (동적으로)
    double seatWidth = MediaQuery.of(context).size.width * 0.75 / 7 - 4;
    double seatHeight = seatWidth;

    return Column(
      children: List.generate(6, (index) {
        bool isSpacingRequired = index % 2 == 0;

        return Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              height: seatHeight,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, innerIndex) {
                  int seatNumber = innerIndex + (index * 7) + 1;
                  String text = seatNumber.toString().padLeft(2, '0');

                  bool isSelected = selectedSeat == seatNumber;

                  return Row(
                    children: [
                      GestureDetector(
                        onTap: () => onSeatSelected(seatNumber),
                        child: Container(
                          width: seatWidth,
                          height: seatHeight,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? const Color(0xFF33C284)
                                : const Color(0xFFF2F2F7),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              text,
                              style: TextStyle(
                                color: isSelected ? Colors.white : const Color(0xFF8E8E93),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
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
            const SizedBox(height: 5),
            if (isSpacingRequired) const SizedBox(height: 35),
          ],
        );
      }),
    );
  }
}
