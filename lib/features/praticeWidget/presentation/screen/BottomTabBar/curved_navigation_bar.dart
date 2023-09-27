import 'package:flutter/material.dart';
import 'package:tdd_architecture_course/features/praticeWidget/presentation/screen/BottomTabBar/nav_custom_painter.dart';

import 'nav_button.dart';

typedef _LetIndexPage = bool Function(int value);

class NavigationbarItem {
  NavigationbarItem({required this.widget, this.label});
  final Widget widget;
  final String? label;
}

class CurvedNavigationBar extends StatefulWidget {
  final List<NavigationbarItem> items;
  final int index;
  final Color color;
  final Color? buttonBackgroundColor;
  final Color backgroundColor;
  final ValueChanged<int>? onTap;
  final _LetIndexPage letIndexChange;
  final Curve animationCurve;
  final Duration animationDuration;
  final double height;

  CurvedNavigationBar(
      {Key? key,
      required this.items,
      this.index = 0,
      this.color = Colors.white,
      this.buttonBackgroundColor,
      this.backgroundColor = Colors.blueAccent,
      this.onTap,
      _LetIndexPage? letIndexChange,
      this.animationDuration = const Duration(milliseconds: 600),
      this.animationCurve = Curves.easeOut,
      this.height = 75})
      : letIndexChange = letIndexChange ?? ((_) => true),
        assert(items.isNotEmpty),
        assert(0 <= index && index < items.length),
        assert(0 <= height && height <= 84.0),
        super(key: key);

  @override
  CurvedNavigationBarState createState() => CurvedNavigationBarState();
}

class CurvedNavigationBarState extends State<CurvedNavigationBar>
    with SingleTickerProviderStateMixin {
  late double _startingPos;
  int _endingIndex = 0;
  late double _pos;
  double _buttonHide = 0;
  late Widget _icon;
  late AnimationController _animationController;
  late int _length;
  late double heightBottom =
      widget.height + MediaQuery.of(context).viewPadding.bottom;

  @override
  void initState() {
    super.initState();
    _icon = widget.items[widget.index].widget;
    _length = widget.items.length;
    _pos = widget.index / _length;
    _startingPos = widget.index / _length;
    _animationController = AnimationController(vsync: this, value: _pos);
    _animationController.addListener(() {
      setState(() {
        // Công thức tính đường cong curve khi animation chạy
        _pos = _animationController.value;
        final endingPos = _endingIndex / widget.items.length;
        final middle = (endingPos + _startingPos) / 2;
        if ((endingPos - _pos).abs() < (_startingPos - _pos).abs()) {
          _icon = widget.items[_endingIndex].widget;
        }
        _buttonHide =
            (1 - ((middle - _pos) / (_startingPos - middle)).abs()).abs();
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final bottom = MediaQuery.of(context).viewPadding.bottom;
    return Container(
      color: Colors.blueAccent,
      height: widget.height,
      child: Stack(
        // Hiển thị
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: -40 - (75.0 + bottom - heightBottom),
            left: Directionality.of(context) == TextDirection.rtl
                ? null
                : _pos * size.width,
            right: Directionality.of(context) == TextDirection.rtl
                ? _pos * size.width
                : null,
            width: size.width / _length,
            child: Center(
              child: Transform.translate(
                  //render vị trí chạy animation (_buttonHide)
                  offset: Offset(
                    0,
                    -(1 - _buttonHide) * (80 + bottom / 2),
                  ),
                  // icon chạy theo chiều ngang
                  // offset: Offset(
                  //   0,
                  //   -80,
                  // ),
                  child: Material(
                    color: widget.buttonBackgroundColor ?? widget.color,
                    type: MaterialType.circle,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _icon,
                    ),
                  )),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: CustomPaint(
              painter: NavCustomPainter(
                  _pos, _length, widget.color, Directionality.of(context)),
              child: Opacity(
                  opacity: 0.2,
                  child: Container(
                    height: 75.0 + bottom / 2,
                    // color: Colors.red,
                  )),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            // bottom: 0,
            bottom: 0 - (75 + bottom / 2 - heightBottom),
            child: Container(
                alignment: Alignment.topCenter,
                height: 75 + bottom / 2,
                child: Row(
                    children: widget.items.map((item) {
                  return NavButton(
                    onTap: _buttonTap,
                    position: _pos,
                    length: _length,
                    index: widget.items.indexOf(item),
                    label: item.label,
                    child: Center(child: item.widget),
                  );
                }).toList())),
          ),
        ],
      ),
    );
  }

  void setPage(int index) {
    _buttonTap(index);
  }

  void _buttonTap(int index) {
    if (!widget.letIndexChange(index)) {
      return;
    }
    final newPosition = index / _length;
    if (index != _endingIndex) {
      if (widget.onTap != null) {
        widget.onTap!(index);
      }
      setState(() {
        _animationController.animateTo(newPosition,
            duration: widget.animationDuration, curve: Curves.easeIn);
        _startingPos = _pos;
        _endingIndex = index;
      });
    }
  }
}
