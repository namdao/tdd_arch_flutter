import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.gr.dart';

@RoutePage(name: 'HomeScreen')
// class HomeScreen extends AutoRouter {}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      // list of your tab routes
      // routes used here must be declared as children
      // routes of /dashboard
      routes: const [BlocPraticePage(), BottomTabRoute()],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        // the passed child is technically our animated selected-tab page
        child: child,
      ),
      builder: (context, child) {
        // obtain the scoped TabsRouter controller using context
        final tabsRouter = AutoTabsRouter.of(context);
        final isHideBottomTab = context.router.currentPath == '/bloc/counter';
        // Here we're building our Scaffold inside of AutoTabsRouter
        // to access the tabsRouter controller provided in this context
        //
        //alterntivly you could use a global key
        return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              type: isHideBottomTab
                  ? BottomNavigationBarType.shifting
                  : BottomNavigationBarType.fixed,
              onTap: (index) {
                // here we switch between tabs
                tabsRouter.setActiveIndex(index);
              },
              items: const [
                BottomNavigationBarItem(
                    label: 'Pratice', icon: Icon(Icons.note)),
                BottomNavigationBarItem(
                    label: 'Settings', icon: Icon(Icons.settings)),
              ],
            ));
      },
    );
  }
}
