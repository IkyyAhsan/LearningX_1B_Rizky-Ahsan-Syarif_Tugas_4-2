import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework_4_2/success_screen.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kamariati Cosmetic', style: TextStyle(fontWeight: FontWeight.w500, color: Color.fromRGBO(255, 140, 149, 1)),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Padding(padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network('https://enviostore.com/media/product/968/product_image-1674101878.jpg', alignment: Alignment.centerRight, width: 400,),
          SizedBox(height: 20,),
          Text('Skintific Gentle A Retinol Renewal Serum', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
          Text('Rp125.000', textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Color.fromRGBO(255, 140, 149, 1)),),
          Padding(padding: EdgeInsets.all(36),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 140, 149, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(padding: EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Total Harga', style: TextStyle(color: Colors.white, fontSize: 18),),
                    Text('Rp.125.000', style: TextStyle(color: Colors.white, fontSize: 18),)
                  ],
                ),
                Container(
                  child: TextButton(onPressed: (){
                    Get.dialog(
                      AlertDialog(
                        title: Text('Konfirmasi Pembelian'),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Apakah anda yakin untuk membeli produk ini?'),
                            SizedBox(height: 10,),
                          ],
                        ),
                        actions: [
                          TextButton(onPressed: () => Get.back(), child: Text('Batal'),
                          ),
                          TextButton(onPressed: () => Get.offAll(() => SuccessScreen()), child: Text('Beli', style: TextStyle(color: Color.fromRGBO(255, 140, 149, 1)),)),
                        ],
                      )
                    );
                  }, child: Text('Bayar Sekarang!', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)),
                )
              ],
            ),
            ),
          ),)
        ],
      ),
      ),
    );
  }
}