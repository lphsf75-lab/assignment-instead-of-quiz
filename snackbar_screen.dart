import 'package:flutter/material.dart';

/// الواجهة الثانية: زر عند النقر عليه يظهر SnackBar
class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3E9F3),
      appBar: AppBar(
        title: const Text('التنبيهات'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.purple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 14,
            ),
            elevation: 2,
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('تم عرض التنبيه بنجاح'),
                duration: Duration(seconds: 2),
              ),
            );
          },
          child: const Text(
            'إظهار SnackBar',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
