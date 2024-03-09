import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:homework_4_2/checkout_screen.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kamariati Cosmetic', style: TextStyle(fontWeight: FontWeight.w500, color: Color.fromRGBO(255, 140, 149, 1)),)
        ),
      body: Padding(padding: EdgeInsets.all(12),
      child: Center(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            // -- First Product
            GestureDetector(
              onTap: () => Get.to(() => CheckoutScreen()),
              child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromRGBO(255, 140, 149, 1),
                              width: 1
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network('https://enviostore.com/media/product/968/product_image-1674101878.jpg',
                              width: double.infinity,
                              height: 120,
                              fit: BoxFit.cover,
                              ),
                              Text('Skintific Gentle A Retinol Renewal Serum', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500),),
                              Text('Rp125.000', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                            ],
                          ),
                        )
                      ),
            ),
            // -- Second Product
            GestureDetector(
              // -- 2. Penerapan Snackbar terdapat disini
              onTap: () => Get.snackbar(
                'Kesalahan!', colorText: Colors.white, 
                'Maaf, barang ini sudah habis',overlayColor: Colors.white ,
                backgroundColor: Colors.orange
                ),
                child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromRGBO(255, 140, 149, 1),
                              width: 1
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network('https://api.watsons.co.id/medias/zoom-side-28559.jpg?context=bWFzdGVyfGltYWdlc3wyNjM4NXxpbWFnZS9qcGVnfGFHSXpMMmd3Tmk4eE1URTFPVEF5TlRZeE5EZzNPQzlYVkVOSlJDMHlPRFUxT1MxemFXUmxMbXB3Wnd8Y2FiZTkwNmM2N2E5OWIyMDllM2YwYjBjOTgyOTU2YjY4NDBiY2ZiN2I1MjI0ZDQ5NGUzNTExOGQyNzk5Y2UyNQ',
                              width: double.infinity,
                              height: 120,
                              fit: BoxFit.cover,
                              ),
                              Text('Skintific 5X Ceramide Low pH Cleanser', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500),),
                              Text('Rp89.000', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                            ],
                          ),
                        )
                      ),
            ),
            GestureDetector(
              // -- 3. Penerapan Snackbar terdapat disini
              onTap: () => Get.snackbar(
                'Kesalahan!', colorText: Colors.white, 
                'Maaf, barang ini sudah habis',overlayColor: Colors.white ,
                backgroundColor: Colors.orange
                ),
                child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromRGBO(255, 140, 149, 1),
                              width: 1
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network('https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/SKINTIFIC_All_Day_Light_Sunscreen_Mist_SPF_50_PA%2B%2B%2B%2B_50ml.png',
                              width: double.infinity,
                              height: 120,
                              fit: BoxFit.cover,
                              ),
                              Text('Skintific Sunscreen Mist SPF50 PA++++', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500),),
                              Text('Rp95.000', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                            ],
                          ),
                        )
                      ),
            ),
            GestureDetector(
              // -- 4. Penerapan Snackbar terdapat disini
              onTap: () => Get.snackbar(
                'Kesalahan!', colorText: Colors.white, 
                'Maaf, barang ini sudah habis',overlayColor: Colors.white ,
                backgroundColor: Colors.orange
                ),
                child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromRGBO(255, 140, 149, 1),
                              width: 1
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network('https://images.soco.id/76c14446-1561-49be-b669-607af1f00430-.jpg',
                              width: double.infinity,
                              height: 120,
                              fit: BoxFit.cover,
                              ),
                              Text('Skintific Cover All Perfect Cushion', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500),),
                              Text('Rp159.000', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                            ],
                          ),
                        )
                      ),
            ),
            GestureDetector(
              // -- 5. Penerapan Snackbar terdapat disini
              onTap: () => Get.snackbar(
                'Kesalahan!', colorText: Colors.white, 
                'Maaf, barang ini sudah habis',overlayColor: Colors.white ,
                backgroundColor: Colors.orange
                ),
                child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromRGBO(255, 140, 149, 1),
                              width: 1
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network('https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/SKITIFIC_360_Crystal_Massager_Lifting_Eye_Cream_20gr.png',
                              width: double.infinity,
                              height: 120,
                              fit: BoxFit.cover,
                              ),
                              Text('Skintific 360 Crystal Massager Lifting Eye', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500),),
                              Text('Rp165.000', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                            ],
                          ),
                        )
                      ),
            ),
            GestureDetector(
              // -- 6. Penerapan Snackbar terdapat disini
              onTap: () => Get.snackbar(
                'Kesalahan!', colorText: Colors.white, 
                'Maaf, barang ini sudah habis',overlayColor: Colors.white ,
                backgroundColor: Colors.orange
                ),
                child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromRGBO(255, 140, 149, 1),
                              width: 1
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network('https://img.myshopline.com/image/store/1704437840303/6-2bc04ed2-f0a0-4f04-b9a8-cd6d6d307582.jpg?w=1024&h=1024',
                              width: double.infinity,
                              height: 120,
                              fit: BoxFit.cover,
                              ),
                              Text('Skintific Alaska Volcano Pore Clay Stick', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500),),
                              Text('Rp79.000', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                            ],
                          ),
                        )
                      ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}