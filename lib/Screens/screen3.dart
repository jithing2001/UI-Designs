// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sixth/Screens/listscreen3.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payments'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.info_outline,
              size: 25,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 200,
                  width: 380,
                  child: Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Transaction Limit',
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                wordSpacing: 5),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            'A free limit up to which you will recieve\nthe online payments directly in your bank',
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 15,
                                wordSpacing: 2),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          LinearPercentIndicator(
                              barRadius: Radius.circular(10),
                              percent: 0.3,
                              progressColor: Colors.blue,
                              lineHeight: 7,
                              width: 340),
                          const SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              '36,668 left out of ₹50,000',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Increase limit'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                ListTile(
                  leading: Text(
                    'Default Method',
                    style: TextStyle(fontSize: 17),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Online Payments',
                        style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ),
                ListTile(
                  leading: Text(
                    'Payment Profile',
                    style: TextStyle(fontSize: 17),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Bank Account',
                        style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  leading: Text(
                    'Payment Overview',
                    style: TextStyle(fontSize: 17),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Life Time',
                        style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_drop_down_outlined))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.orange[500],
                        ),
                        height: 90,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'AMOUNT ON HOLD',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                '₹0',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green,
                        ),
                        height: 90,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'AMOUNT RECIEVED',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                '₹13,332',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Transactions',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    threebutton(
                        text: 'On hold',
                        txtcolor: Colors.black,
                        color: Colors.grey[300]),
                    threebutton(
                        text: 'Payouts(15)',
                        txtcolor: Colors.white,
                        color: Colors.blue),
                    threebutton(
                        text: 'Refunds',
                        txtcolor: Colors.white,
                        color: Colors.grey)
                  ],
                ),
                ...List.generate(
                    orderlist.length - 1, (index) => listtileview(index))
              ]),
        ),
      ),
    );
  }
}

ElevatedButton threebutton({required text, required txtcolor, required color}) {
  return ElevatedButton(
    onPressed: () {},
    child: Text(
      text,
      style: TextStyle(color: txtcolor),
    ),
    style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
  );
}

Widget listtileview(index) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ListTile(
        leading: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              image: DecorationImage(image: NetworkImage(listtileimage[index])),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white),
          height: 55,
          width: 55,
        ),
        title: Text(orderlist[index]),
        subtitle: Text(datelist[index]),
        trailing: Column(
          mainAxisSize: MainAxisSize.max,
          children: [Text(amountlist[index]), Text('🟢 Successful')],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 12, right: 8),
        child: Text(depositedList[index]),
      ),
      Divider(
        thickness: 2,
      ),
    ],
  );
}
