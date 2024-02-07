import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tdd_architecture_course/features/praticeWidget/presentation/screen/Challenge/ParallaxEffectPageView/exhibition_bottom_sheet.dart';
import 'package:tdd_architecture_course/features/praticeWidget/presentation/screen/Challenge/ParallaxEffectPageView/sliding_card_view.dart';

@RoutePage(name: 'ParallaxEffectPageScreen')
class ParallaxEffectPageView extends StatelessWidget {
  const ParallaxEffectPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Challenge parralax'),
          elevation: 0,
        ),
        body: const Stack(
          children: [
            SafeArea(
              // another way to layout
              // child: Container(
              //     alignment: Alignment.topCenter,
              //     width: double.infinity,
              //     height: MediaQuery.of(context).size.height,
              //     child: UnconstrainedBox(child: SlidingCarsView())),
              child: OverflowBox(
                alignment: Alignment.center,
                child: SlidingCarsView(),
              ),
            ),
            ExhibitionBottomSheet()
          ],
        ));
  }
}
