import 'package:flutter/material.dart';
import 'dart:math';

class SlidingCarsView extends StatefulWidget {
  const SlidingCarsView({super.key});

  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCarsView> {
  late PageController pageController;
  double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8);
    pageController.addListener(() {
      setState(() {
        pageOffset = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //     color: Colors.red,
    //     width: MediaQuery.of(context).size.width,
    //     height: MediaQuery.of(context).size.height * 0.55);
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.55,
      child: PageView(
        controller: pageController,
        children: [
          SlidingCard(
            assetName: 'steve-johnson.jpeg',
            name: 'Shenzhen GLOBAL DESIGN AWARD 2018',
            date: '4.20-30',
            offset: pageOffset,
          ),
          SlidingCard(
            name: 'Dawan District, Guangdong Hong Kong and Macao',
            date: '4.28-31',
            assetName: 'rodion-kutsaev.jpeg',
            offset: pageOffset - 1,
          ),
        ],
      ),
    );
  }
}

class SlidingCard extends StatelessWidget {
  final String name;
  final String date;
  final String assetName;
  final double offset;

  const SlidingCard(
      {super.key,
      required this.name,
      required this.date,
      required this.assetName,
      required this.offset});

  @override
  Widget build(BuildContext context) {
    double gauss = exp(-(pow(offset.abs() - 0.5, 2) / 0.08));
    return Transform.translate(
        offset: Offset(-32 * gauss * offset.sign, 0),
        child: Card(
          margin: const EdgeInsets.only(left: 8, right: 8, bottom: 24),
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
          child: Column(children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(32)),
              child: Image.asset(
                'lib/assets/${assetName}',
                height: MediaQuery.of(context).size.height * 0.3,
                fit: BoxFit.none,
                alignment: Alignment(-offset.abs(), 0),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
                child: CardContent(
              name: name,
              date: date,
              offset: gauss,
            )),
          ]),
        ));
  }
}

class CardContent extends StatelessWidget {
  final String name;
  final String date;
  final double offset;
  const CardContent(
      {super.key,
      required this.name,
      required this.date,
      required this.offset});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Transform.translate(
            offset: Offset(8 * offset, 0),
            child: Text(
              name,
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Transform.translate(
              offset: Offset(32 * offset, 0),
              child: Text(
                date,
                style: TextStyle(color: Colors.grey),
              )),
          Spacer(),
          Row(
            children: [
              Transform.translate(
                  offset: Offset(48 * offset, 0), //<-- translate the button
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Reserve'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF162A49),
                      textStyle: TextStyle(color: Colors.white),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                    ),
                  )),
              Spacer(),
              Transform.translate(
                offset: Offset(32 * offset, 0), //<-- translate the price label
                child: Text(
                  '0.00 \$',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              )
            ],
          )
        ],
      ),
    );
  }
}
