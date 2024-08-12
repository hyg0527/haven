import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Logcat extends StatefulWidget {
  const Logcat({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ShowLogcatState();
  }
}

class _ShowLogcatState extends State<Logcat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '결과 기록',
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
          decoration: const BoxDecoration(color: Colors.white),
        ));
    // Positioned(
    //         left: 7,
    //         top: 62,
    //         child: Container(
    //           padding: const EdgeInsets.all(10),
    //           child: Row(
    //             mainAxisSize: MainAxisSize.min,
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Center(
    //                 child: GestureDetector(
    //                   onTap: () => Navigator.pop(context),
    //                   child: Container(
    //                     width: 20,
    //                     height: 20,
    //                     clipBehavior: Clip.antiAlias,
    //                     decoration: const BoxDecoration(),
    //                     child: SvgPicture.asset(
    //                       'assets/images/back_button.svg',
    //                       fit: BoxFit.cover,
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //       const Positioned(
    //         left: 68,
    //         top: 67,
    //         child: Text(
    //           '결과 기록',
    //           style: TextStyle(
    //             color: Colors.black,
    //             fontSize: 24,
    //             fontFamily: 'Pretendard',
    //             fontWeight: FontWeight.w700,
    //             height: 0,
    //           ),
    //         ),
    //       ),
  }
}
