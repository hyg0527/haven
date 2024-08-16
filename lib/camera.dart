import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:haven/clickbutton.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CameraScreenState();
  }
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? _controller;
  late Future<void> _initializeController;
  CameraDescription? frontCamera;

  @override
  void initState() {
    super.initState();
    _initializeController = _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    try {
      final cameras = await availableCameras();
      if (cameras.isEmpty) {
        throw Exception('No cameras available');
      }
      // 전면 카메라 찾아서 연결
      for (var camera in cameras) {
        if (camera.lensDirection == CameraLensDirection.front) {
          frontCamera = camera;
          break;
        }
      }

      if (frontCamera != null) {
        _controller = CameraController(
          frontCamera!,
          ResolutionPreset.high,
        );
      }

      await _controller!.initialize();
    } catch (e) {
      debugPrint('Camera initialization error: $e');
      _controller = null;
    }
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '얼굴 인식',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          backgroundColor: Colors.white),
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 197, 197, 197)),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder<void>(
                future: _initializeController,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done &&
                      _controller != null) {
                    return AspectRatio(
                        aspectRatio: _controller!.value.aspectRatio,
                        child: CameraPreview(_controller!));
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 32, bottom: 32),
              decoration: const BoxDecoration(color: Colors.white),
              child: Center(
                child: ClickButton(
                  isCircle: true,
                  child: ClipOval(
                    child: Container(
                      width: 100,
                      height: 100,
                      padding: const EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF33C284),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 10,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          '인식하기',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
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
