import 'package:components_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: const [
          CustomCardType1(),
          SizedBox(height: 8),
          CustomCardType2(
            supportText:
                'Fugiat anim officia dolore irure ex et adipisicing non id cillum adipisicing amet sunt laboris.',
            imageUrl:
                'https://imgs.search.brave.com/wiJTphGhelFB1oZYxmXjOlsAFO0DD5PEtzMhqFAHFzk/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJhY2Nlc3Mu/Y29tL2Z1bGwvMTc1/MTc1MS5qcGc',
          ),
          SizedBox(height: 8),
          CustomCardType1(),
          SizedBox(height: 8),
          CustomCardType2(
            imageUrl:
                'https://imgs.search.brave.com/dZPYiRXShESQQP6_531rquZl5NCrC4H_HMs1gfU3u7A/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93d3cu/d2FsbHBhcGVydGlw/LmNvbS93bWltZ3Mv/OS05ODQ0OV9tYWNi/b29rLW1vdW50YWlu/LXdhbGxwYXBlci1o/ZC5qcGc',
          ),
          SizedBox(height: 8),
          CustomCardType1(),
          SizedBox(height: 8),
          CustomCardType2(
            imageUrl:
                'https://imgs.search.brave.com/wVdUjjuvD4BZ1BqYnwMdmvx_oh4o-IZG3pvdkghE8T4/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDkxMzk2/NzYuanBn',
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
