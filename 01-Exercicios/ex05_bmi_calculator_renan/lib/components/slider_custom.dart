import 'package:flutter/material.dart';

class SliderCustom extends StatelessWidget {

  final Function onChanged;
  final double min;
  final double max;
  final String label;
  final double value;

  SliderCustom({ this.onChanged, this.min, this.max, this.label, this.value });

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        trackHeight: 10.0,
        inactiveTrackColor: Color(0xFFB4D0D1),
        activeTrackColor: Colors.white,
        showValueIndicator: ShowValueIndicator.always,
        thumbColor: Color(0xFF2E4158),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
        valueIndicatorColor: Color(0xFF2E4158),
      ),
      child: Slider(
        value: value,
        label: label,
        min: min,
        max: max,
        onChanged: onChanged,
      ),
    );
  }
}

