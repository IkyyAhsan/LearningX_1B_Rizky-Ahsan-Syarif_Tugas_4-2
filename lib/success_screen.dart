import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework_4_2/home_screen.dart';
import 'package:lottie/lottie.dart';

class SuccessScreen extends StatelessWidget {
  SuccessScreen({Key? key}) : super(key: key);

  static final String successAnimation = "assets/animations/1709969684645.json";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 140, 149, 1),
        title: Text('Kamariati Cosmetic', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),)
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Pembayaran berhasil!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.black,
                ),
              ),
              Lottie.asset(
                successAnimation,
                width: 300,
                height: 300, // Adjust the height as needed
              ),
              Text(
                'Pesanan anda akan segera dikirimkan, silahkan tunggu',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 80),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => Get.offAll(() => HomeScreen()),
                  child: Text('OK'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(255, 140, 149, 1),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}