import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScreenFive extends StatelessWidget {
  const ScreenFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order #1688068'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'May 31, 05,42 PM',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '🔵 Delivered',
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                ],
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1 ITEM',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.receipt_sharp,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'RECEIPT',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 90,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: NetworkImage(
                              'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/h/d/hdmwhsh6504_1_2.jpg',
                            ),
                            fit: BoxFit.cover),
                        border: Border.all(color: Colors.grey)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Explore | Men | Navy Blue',
                        style: TextStyle(fontSize: 19),
                      ),
                      const Text(
                        '1 piece',
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        'Size: XL',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            // color: Colors.blue,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 180, 216, 245),
                                border: Border.all(color: Colors.blue)),
                            child: const Center(
                                child: Text(
                              '1',
                              style:
                                  TextStyle(fontSize: 19, color: Colors.blue),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'x ₹799',
                            style: TextStyle(fontSize: 19),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Item Total',
                    style: TextStyle(fontSize: 17),
                  ),
                  const Text('₹799', style: TextStyle(fontSize: 17))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Delivery', style: TextStyle(fontSize: 17)),
                  const Text('FREE',
                      style: TextStyle(fontSize: 17, color: Colors.green))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Grand Total',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    '₹799',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'CUSTOMER DETAILS',
                    style: TextStyle(fontSize: 19, color: Colors.grey[700]),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(
                          Icons.share_outlined,
                          color: Colors.blue,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'SHARE',
                          style: TextStyle(color: Colors.blue, fontSize: 19),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Deepa',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '+91-7829000484',
                        style: TextStyle(color: Colors.grey[700], fontSize: 18),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.phone,
                          )),
                      TextButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.wechat_rounded,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Address',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              const Text(
                'D 1101 chartered Beverly\nHills,Subramanyapura P.O',
                style: TextStyle(fontSize: 19),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    'City',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 140,
                  ),
                  const Text(
                    'Pincode',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  const Text(
                    'Bangalore',
                    style: TextStyle(fontSize: 19),
                  ),
                  const SizedBox(
                    width: 87,
                  ),
                  const Text(
                    '560061',
                    style: TextStyle(fontSize: 19),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Payment',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Online',
                        style: TextStyle(fontSize: 19),
                      )
                    ],
                  ),
                  Container(
                    height: 25,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 139, 225, 142),
                    ),
                    child: const Center(
                      child: Text(
                        'PAID',
                        style: TextStyle(
                            color: Color.fromARGB(255, 35, 138, 38),
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Text('ADDITIONAL INFORMATION',
                  style: TextStyle(fontSize: 19, color: Colors.grey[700])),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'State',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Karnataka',
                style: TextStyle(fontSize: 19),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Email',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              const Text(
                'greeniceaqua@gmail.com',
                style: TextStyle(fontSize: 19),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.blue)),
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(
                    child: Text('Share Receipt',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
