import 'package:auto_route/auto_route.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tdd_architecture_course/features/praticeWidget/presentation/screen/BottomTabBar/curved_navigation_bar.dart';

@RoutePage(name: 'BottomTabbarScreen')
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Curved bottom tab bar'),
          backgroundColor: Colors.blueAccent,
          leading: InkWell(
            onTap: () {
              context.router.pop();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          items: [
            NavigationbarItem(
              label: 'add',
              widget: const Icon(Icons.add, size: 30),
            ),
            NavigationbarItem(
              label: 'add',
              widget: const Icon(Icons.add, size: 30),
            ),
            NavigationbarItem(
              label: 'compare arrrow',
              widget: const Icon(Icons.list, size: 30),
            ),
            NavigationbarItem(
              label: 'compare arrrow',
              widget: const Icon(Icons.compare_arrows, size: 30),
            ),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: Column(
              children: <Widget>[
                Text(_page.toString(), textScaleFactor: 10.0),
                ElevatedButton(
                  child: const Text('Go To Page of index 1'),
                  onPressed: () {
                    //Page change using state does the same as clicking index 1 navigation button
                    final CurvedNavigationBarState? navBarState =
                        _bottomNavigationKey.currentState;
                    navBarState?.setPage(1);
                  },
                )
              ],
            ),
          ),
        ));
  }
}
