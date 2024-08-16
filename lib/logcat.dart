import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: Colors.white),
        child: Scrollbar(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.fromLTRB(16, 16, 0, 8),
                  child: const Text(
                    '오늘',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                // 첫 번째 Column
                Column(
                  children: List.generate(3, (index) {
                    return const ListTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('O시간 전',
                              style: TextStyle(
                                color: Color(0xFF8E8E93),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              )),
                          SizedBox(
                            height: 8,
                          ),
                          Text('OOO 님이 오전/오후 O시 O분에 입장하였습니다.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              )),
                        ],
                      ),
                    );
                  }),
                ),
                Container(
                  width: 360,
                  height: 0.5,
                  margin: const EdgeInsets.fromLTRB(0, 24, 0, 14),
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 200, 200, 200),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/divider.svg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.fromLTRB(16, 16, 0, 8),
                  child: const Text(
                    '어제',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                // 두 번째 Column
                Column(
                  children: List.generate(2, (index) {
                    return const ListTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('O시간 전',
                              style: TextStyle(
                                color: Color(0xFF8E8E93),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              )),
                          SizedBox(
                            height: 8,
                          ),
                          Text('OOO 님이 오전/오후 O시 O분에 입장하였습니다.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              )),
                        ],
                      ),
                    );
                  }),
                ),
                Container(
                  width: 360,
                  height: 0.5,
                  clipBehavior: Clip.antiAlias,
                  margin: const EdgeInsets.fromLTRB(0, 24, 0, 14),
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 200, 200, 200),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/divider.svg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.fromLTRB(16, 16, 0, 8),
                  child: const Text(
                    '지난 7일',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                // 세 번째 Column
                Column(
                  children: List.generate(10, (index) {
                    return const ListTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('O일 전',
                              style: TextStyle(
                                color: Color(0xFF8E8E93),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              )),
                          SizedBox(
                            height: 8,
                          ),
                          Text('OOO 님이 오전/오후 O시 O분에 입장하였습니다.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              )),
                        ],
                      ),
                    );
                  }),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
