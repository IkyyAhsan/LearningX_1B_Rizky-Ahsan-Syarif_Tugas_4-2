import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework_4_2/order_screen.dart';

class MyController extends GetxController{
  var name = 'Kamariati Cosmetic'.obs;
    late var user = 'Selamat Datang di Toko\n$name'.obs;
    
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var myController = MyController();
    void ubahNama(){
      myController.name.value = myController.name.value.toUpperCase();
    }
    return Scaffold(
      appBar: AppBar(title: Text('Kamariati Cosmetic', style: TextStyle(fontWeight: FontWeight.w500, color: Color.fromRGBO(255, 140, 149, 1)),)),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // -- 1. Penerapan OBX untuk String terdapat disini
              Obx(() => TextButton(onPressed: () => ubahNama(), child: Text(myController.name.value, textAlign: TextAlign.center, style: TextStyle( fontSize: 24, fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 140, 149, 1)),),)),
              SizedBox(height: 24,),
              ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                    height: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Mari kita berbelanja!", style: TextStyle(color: Color.fromRGBO(255, 140, 149, 1), fontSize: 15, fontWeight: FontWeight.w600),),
                        SizedBox(height: 50,),
                        ElevatedButton(
                          onPressed: () => Get.to(() => OrderScreen()),
                          child: Text(
                            'Ayo belanja!!',
                            style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500), // You can adjust the font size
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(255, 140, 149, 1),
                          ),
                        )
                      ],
                    ),
                  ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(255, 140, 149, 1),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("Let's Get Started!"),
              )
            ],
          ),
        ),
      ),
    );
  }
}