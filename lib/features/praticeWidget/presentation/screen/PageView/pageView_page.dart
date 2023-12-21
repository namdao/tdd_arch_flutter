import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

@RoutePage(name: 'PageViewScreen')
class PageViewPage extends StatelessWidget {
  const PageViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageViewExample(),
    );
  }
}

class PageViewExample extends StatelessWidget {
  final List<String> items = List.generate(10, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView Example'),
      ),
      body: PageView.builder(
        allowImplicitScrolling: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                items[index],
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold, // Thay đổi độ đậm của văn bản
                  fontStyle: FontStyle.italic, // Thay đổi kiểu chữ của văn bản
                  decoration: TextDecoration
                      .underline, // Thay đổi gạch chân dưới văn bản
                  decorationColor:
                      Colors.red, // Thay đổi màu sắc của gạch chân dưới văn bản
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
