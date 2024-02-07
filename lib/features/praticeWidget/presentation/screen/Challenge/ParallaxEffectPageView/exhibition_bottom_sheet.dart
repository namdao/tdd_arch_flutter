import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math';

class ExhibitionBottomSheet extends StatefulWidget {
  const ExhibitionBottomSheet({super.key});

  @override
  State<ExhibitionBottomSheet> createState() => _ExhibitionBottomSheetState();
}

const double minHeight = 120;
const double iconStartSize = 44; //<-- add edge values
const double iconEndSize = 120; //<-- add edge values
const double iconStartMarginTop = 36; //<-- add edge values
const double iconEndMarginTop = 80; //<-- add edge values
const double iconsVerticalSpacing = 24; //<-- add edge values
const double iconsHorizontalSpacing = 16;

class _ExhibitionBottomSheetState extends State<ExhibitionBottomSheet>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  double get maxHeight =>
      MediaQuery.of(context).size.height -
      (minHeight + MediaQuery.of(context).padding.top);

  double get headerFontSize => lerp(14, 24);
  double get headerTopMargin =>
      lerp(10, 20 + MediaQuery.of(context).padding.top);
  double get iconSize => lerp(iconStartSize, iconEndSize);
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  double lerp(double min, double max) {
    return lerpDouble(min, max, _animationController.value) as double;
  }

  double iconTopMargin(int index) => lerp(
      iconStartMarginTop,
      iconEndMarginTop +
          index * (iconsVerticalSpacing + iconEndSize) +
          headerTopMargin);

  double iconLeftMargin(int index) {
    return lerp(index * (iconsHorizontalSpacing + iconStartSize), 0);
  }

  double get itemBorderRadius => lerp(8, 24);

  void _toggle() {
    final bool isOpen =
        _animationController.status == AnimationStatus.completed;
    _animationController.fling(velocity: isOpen ? -2 : 2);
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    _animationController.value -= details.primaryDelta! / maxHeight;
  }

  void _handleDragEnd(DragEndDetails details) {
    if (_animationController.isAnimating ||
        _animationController.status == AnimationStatus.completed) return;
    final double flingVelocity =
        details.velocity.pixelsPerSecond.dy / maxHeight;
    _animationController.fling(velocity: 0);
    if (flingVelocity < 0.0) {
      _animationController.fling(velocity: max(2.0, -flingVelocity));
    } else if (flingVelocity > 0.0) {
      _animationController.fling(velocity: min(-2.0, -flingVelocity));
    } else {
      _animationController.fling(
          velocity: _animationController.value < 0.5 ? -2.0 : 2.0);
    }
  }

  Widget _buildIcon(Event event) {
    int index = events.indexOf(event);
    return Positioned(
        height: iconSize,
        width: iconSize,
        top: iconTopMargin(index),
        left: iconLeftMargin(index),
        child: ClipRRect(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(itemBorderRadius),
            right: Radius.circular(itemBorderRadius),
          ),
          child: Image.asset(
            'lib/assets/${event.assetName}',
            fit: BoxFit.cover,
            alignment: Alignment(lerp(1, 0), 0),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Positioned(
              height: lerp(minHeight, maxHeight),
              left: 0,
              right: 0,
              bottom: 0,
              child: GestureDetector(
                onVerticalDragUpdate: _handleDragUpdate,
                onVerticalDragEnd: _handleDragEnd,
                onTap: _toggle,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  decoration: const BoxDecoration(
                    color: Color(0xFF162A49),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(32)),
                  ),
                  child: Stack(
                    children: [
                      const MenuButton(),
                      SheetHeader(
                          fontSize: headerFontSize, topMargin: headerTopMargin),
                      for (Event event in events) _buildFulItem(event),
                      for (Event event in events) _buildIcon(event),
                    ],
                  ),
                ),
              ));
        });
  }

  Widget _buildFulItem(Event event) {
    int index = events.indexOf(event);
    return ExpandedEventItem(
        topMargin: iconTopMargin(index),
        leftmargin: iconLeftMargin(index),
        height: iconSize,
        isVisible: _animationController.status == AnimationStatus.completed,
        borderRadius: itemBorderRadius,
        title: event.title,
        date: event.date);
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
        right: 0,
        bottom: 24,
        child: Icon(Icons.menu, color: Colors.white, size: 28));
  }
}

class SheetHeader extends StatelessWidget {
  final double fontSize;
  final double topMargin;

  const SheetHeader(
      {super.key, required this.fontSize, required this.topMargin});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: topMargin,
        child: Text(
          'List booked',
          style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              fontWeight: FontWeight.w500),
        ));
  }
}

final List<Event> events = [
  Event('steve-johnson.jpeg', 'Shenzhen GLOBAL DESIGN AWARD 2018', '4.20-30'),
  Event('efe-kurnaz.jpg', 'Shenzhen GLOBAL DESIGN AWARD 2018', '4.20-30'),
  Event('rodion-kutsaev.jpeg', 'Dawan District Guangdong Hong Kong', '4.28-31'),
];

class Event {
  final String assetName;
  final String title;
  final String date;

  Event(this.assetName, this.title, this.date);
}

class ExpandedEventItem extends StatelessWidget {
  final double topMargin;
  final double leftmargin;
  final double height;
  final bool isVisible;
  final double borderRadius;
  final String title;
  final String date;

  const ExpandedEventItem({
    super.key,
    required this.topMargin,
    required this.leftmargin,
    required this.height,
    required this.isVisible,
    required this.borderRadius,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topMargin,
      left: leftmargin,
      right: 0,
      height: height,
      child: AnimatedOpacity(
        opacity: isVisible ? 1 : 0,
        duration: const Duration(milliseconds: 200),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: Colors.white),
          padding: EdgeInsets.only(left: height).add(
            const EdgeInsets.all(8),
          ),
          child: _buildContent(),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        Text(title, style: const TextStyle(fontSize: 16)),
        const SizedBox(height: 8),
        Row(
          children: <Widget>[
            Text(
              '1 ticket',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Colors.grey.shade600,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              date,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            Icon(
              Icons.place,
              color: Colors.grey.shade400,
              size: 16,
            ),
            Text(
              'Science Park 10 25A',
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 13,
              ),
            )
          ],
        )
      ],
    );
  }
}
