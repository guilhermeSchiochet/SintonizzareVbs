import 'package:flutter/material.dart';
import 'package:sintonizzarevbs/presentation/widgets/stk_box.dart';
import 'package:sintonizzarevbs/presentation/widgets/stk_sliderbar.dart';

class StkShowMusicBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildMusicBox(),
        const SizedBox(height: 30),
        buildControlRow(),
        const SizedBox(height: 30),
        buildSliderBar(),
      ],
    );
  }

  Widget buildMusicBox() {
    return StkBox(
      sizeHeight: null,
      sizeWidth: null,
      childWidget: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.person,
                  color: Colors.grey.shade600,
                  size: 70,
                ),
              ),
            ),
            buildMusicInfo(),
          ],
        ),
      ),
    );
  }

  Widget buildMusicInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kota The Friend',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              'Birdie',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ],
        ),
        this._icons(
          Icons.favorite,
          iconColor: Colors.red,
          onTap: () {},
        ),
      ],
    );
  }

  Widget buildControlRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('0:00'),
        _icons(
          Icons.shuffle,
          onTap: () {},
        ),
        _icons(
          Icons.repeat,
          onTap: () {},
        ),
        Text('4:22'),
      ],
    );
  }

  Widget _icons(IconData icone, {void Function()? onTap, Color? iconColor}) {
    return StkBox(
      icon: icone,
      onTap: onTap,
      sizeWidth: 60,
      sizeHeight: 60,
      activeShadow: false,
      iconColor: iconColor,
    );
  }

  Widget buildSliderBar() {
    return StkSliderBar(
      value: 10,
      min: 2,
      max: 20,
      onChanged: (e) {},
    );
  }
}
