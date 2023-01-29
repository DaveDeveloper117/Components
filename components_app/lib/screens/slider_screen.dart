import 'package:components_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            activeColor: AppTheme.primary,
            max: 400,
            min: 50,
            value: _sliderValue,
            onChanged: (value) {
              _sliderValue = value;
              setState(() {});
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://imgs.search.brave.com/djqLxa2cFu5czRwiuEQcmO-8jRBGj3qSLQjYLrRkwdY/rs:fit:1106:1200:1/g:ce/aHR0cHM6Ly9pLmli/Yi5jby81ckxQMVNR/LzE1OTU0NzUwODU0/NDUucG5n'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
