import 'package:flutter/material.dart';

class RadioSeriesCard extends StatelessWidget {
  const RadioSeriesCard({
    this.width,
    this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: Colors.blue[200],
        child: InkWell(
          onTap: () {},
          child: Container(),
        ),
      ),
    );
  }
}
