import 'package:auto_route/auto_route.dart';
import 'package:flutter/Material.dart';

@RoutePage(name: 'Page1')
class Page1 extends StatelessWidget {
  const Page1();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TextButton(onPressed: () => {}, child: const Text('go back'))],
    );
  }
}
