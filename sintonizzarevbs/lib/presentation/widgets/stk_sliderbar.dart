import 'package:flutter/material.dart';

class StkSliderBar extends StatelessWidget {
  final double value;
  final double min;
  final double max;
  final ValueChanged<double>? onChanged;

  StkSliderBar({
    Key? key,
    required this.value,
    required this.min,
    required this.max,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(25),
        boxShadow: _buildBoxShadows(),
      ),
      child: SliderTheme(
        data: _buildSliderThemeData(context),
        child: Slider(
          value: value,
          min: min,
          max: max,
          onChanged: onChanged,
        ),
      ),
    );
  }

  List<BoxShadow> _buildBoxShadows() {
    return [
      BoxShadow(
        color: Colors.grey.shade500,
        blurRadius: 15,
        offset: Offset(5, 5),
      ),
      BoxShadow(
        color: Colors.grey.shade100,
        blurRadius: 15,
        offset: Offset(-5, -5),
      ),
    ];
  }

  SliderThemeData _buildSliderThemeData(BuildContext context) {
    return SliderTheme.of(context).copyWith(
      trackHeight: 10.0,
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0),
      activeTrackColor: Colors.red,
      inactiveTrackColor: const Color.fromARGB(255, 211, 211, 211),
    );
  }
}
