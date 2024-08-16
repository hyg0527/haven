import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io'; // 파일 처리를 위해 필요

class EditProfile extends StatefulWidget {
  final Function(File) onImageSelected; // 이미지 선택 시 호출할 콜백

  const EditProfile({Key? key, required this.onImageSelected}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File? _image; // 선택된 이미지를 저장할 변수

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _image = File(image.path);
      });

      widget.onImageSelected(_image!); // 선택된 이미지를 콜백으로 전달
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              child: _image != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(72),
                      child: Image.file(
                        _image!,
                        fit: BoxFit.cover,
                      ),
                    )
                  : null,
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: _pickImage, // 이미지 선택 함수 호출
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
            // 여기에 나머지 UI 요소들 추가
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pop(context, _image); // 수정하기를 누르면 선택된 이미지를 반환
              },
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
