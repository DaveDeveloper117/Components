import 'package:components_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Steve Jobs'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: const CircleAvatar(
              backgroundColor: AppTheme.primaryLight,
              foregroundColor: Colors.white,
              child: Text('SJ'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage(
              'https://imgs.search.brave.com/2IUdd6uK98gBfL2z9D78sOBvU_FaAzqTMTsrZWGWGdw/rs:fit:896:1080:1/g:ce/aHR0cHM6Ly8xLmJw/LmJsb2dzcG90LmNv/bS8tT3dRRm1OMm5C/bDgvWGpXa3NoZUg5/UUkvQUFBQUFBQUFH/OHcvUENacjI1R29J/Z1VOaUN3d3drUjlT/M3RYS1p3bk9PQ1RB/Q05jQkdBc1lIUS9z/MTYwMC9TdGV2ZSUy/QkpvYnMuanBn'),
        ),
      ),
    );
  }
}
