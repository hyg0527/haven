import 'package:flutter/material.dart';

class ClickButton extends StatefulWidget {
  final Widget child;
  final Widget? secondScreen;
  final bool? isCircle;
  final bool? isActivated;

  const ClickButton(
      {super.key,
      required this.child,
      this.secondScreen,
      this.isCircle,
      this.isActivated});

  @override
  State<StatefulWidget> createState() {
    return _ClickButtonState();
  }
}

class _ClickButtonState extends State<ClickButton> {
  bool _isPressed = false;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _isPressed = false;
    });
  }

  void _onTapCancel() {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      onTap: () {
        if (widget.secondScreen != null && (widget.isActivated ?? true)) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget.secondScreen!),
          );
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: (widget.isCircle ?? false)
                  ? BorderRadius.circular(80)
                  : BorderRadius.circular(20),
            ),
            shadows: _isPressed && (widget.isActivated ?? true)
                ? [
                    const BoxShadow(
                      color: Color(0x33000000),
                      blurRadius: 15,
                      offset: Offset(0, 0),
                      spreadRadius: 5,
                    )
                  ]
                : [
                    const BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 10,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ]),
        child: Opacity(
          opacity: (widget.isActivated ?? true) ? 1.0 : 0.2,
          child: widget.child,
        ),
      ),
    );
  }
}
