import 'dart:async';
import 'package:flutter/material.dart';

class AutoSc extends StatefulWidget {
  const AutoSc({super.key});

  @override
  State<AutoSc> createState() => _AutoScState();
}

class _AutoScState extends State<AutoSc> {
  ScrollController _scrollController = ScrollController();
  Timer? _timer;
  double _scrollPosition = 0.0;
  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      _scrollPosition += 2.0; // Kecepatan scroll
      if (_scrollPosition >= _scrollController.position.maxScrollExtent) {
        _scrollPosition = 0.0; // Kembali ke atas ketika mencapai akhir
      }
      _scrollController.jumpTo(_scrollPosition);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 340,
              height: 150,
              color: Colors.orange,
              child: Image.asset('asset/image/gambar1.png'),
            ),
            SizedBox(width: 10),
            Container(
              width: 340,
              height: 150,
              color: Colors.orange,
              child: Image.asset('asset/image/gambar1.png'),
            ),
            SizedBox(width: 10),
            Container(
              width: 340,
              height: 150,
              color: Colors.orange,
              child: Image.asset('asset/image/gambar1.png'),
            ),
          ],
        ),
      ),
    );
  }
}
