import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final double position;
  final int length;
  final int index;
  final ValueChanged<int> onTap;
  final Widget child;
  final String? label;
  const NavButton({
    super.key,
    required this.onTap,
    required this.position,
    required this.length,
    required this.index,
    required this.child,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    final desiredPosition = 1.0 / length * index;
    final difference = (position - desiredPosition).abs();
    final verticalAlignment = 1 - length * difference;
    final opacity = length * difference;
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          onTap(index);
        },
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Transform.translate(
            offset: Offset(
                0,
                difference < 1.0 / length
                    ? (verticalAlignment * 40) - 16
                    : -16),
            child: Opacity(
                opacity: difference < 1.0 / length * 0.99 ? opacity : 1.0,
                child: child),
          ),
          if (label != null)
            Transform.translate(
              offset: Offset(
                  0, difference < 1.0 / length ? 0 : (verticalAlignment * 40)),
              child: Transform.translate(
                offset: const Offset(0, 0),
                child: Opacity(
                    opacity: difference == 0 ? 1 : 0,
                    child: Text(
                      label ?? '',
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    )),
              ),
            )
          else
            const SizedBox(
              height: 16,
            )
        ]),
      ),
    );
  }
}
