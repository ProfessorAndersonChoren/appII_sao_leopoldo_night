import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Roamify'),
        centerTitle: true,
        leading: SvgPicture.asset('assets/ic_camera.svg'),
        leadingWidth: 28,
        actions: [
          SvgPicture.asset('assets/ic_directs.svg'),
        ],
      ),
    );
  }
}
