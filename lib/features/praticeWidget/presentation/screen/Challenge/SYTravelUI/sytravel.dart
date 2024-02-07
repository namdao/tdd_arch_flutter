import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage(name: 'SYTraVelScreen')
class SYTraVel extends StatelessWidget {
  const SYTraVel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SY Travel'),
          elevation: 0,
        ),
        body: const Stack(
          children: [
            SafeArea(
              child: MainPage(),
            ),
          ],
        ));
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController();
  late final AnimationController _animController = AnimationController(
    duration: const Duration(microseconds: 1),
    vsync: this,
  );
  @override
  void dispose() {
    _pageController.dispose();
    _animController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      if (_pageController.page! < 1) {
        _animController.forward(from: 0);
      } else {
        _animController.reverse(from: _pageController.offset);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _pageController,
          physics: const ClampingScrollPhysics(),
          children: const [LeopardPage(), VulturePage()],
        ),
        AnimatedBuilder(
            animation: _animController,
            builder: (context, child) {
              double offset = 0;
              if (_pageController.position.haveDimensions) {
                offset = _pageController.offset;
              }
              return LeopardImg(offset: offset);
            }),
      ],
    );
  }
}

class LeopardImg extends StatelessWidget {
  const LeopardImg({super.key, required this.offset});
  final double offset;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100,
      left: -offset,
      height: 250,
      child: Image.asset('lib/assets/sy_travel/leopard.png'),
    );
  }
}

class LeopardPage extends StatelessWidget {
  const LeopardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('lib/assets/sy_travel/leopard.png');
  }
}

class VulturePage extends StatelessWidget {
  const VulturePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'lib/assets/sy_travel/vulture.png',
    );
  }
}
