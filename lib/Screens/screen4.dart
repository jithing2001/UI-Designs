import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sixth/Screens/youtube_widget.dart';
import 'package:sixth/constats.dart';

class ScreenFOur extends StatelessWidget {
  const ScreenFOur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dukaan Premium'),
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 160,
                  width: 400,
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
                  child: Card(
                    color: Colors.white,
                    child: SizedBox(
                      height: 220,
                      width: 350,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset('Assets/logo.png'),
                            height: 90,
                            width: 200,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Get Dukaan Premium for just',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '₹4,999/year',
                            style: TextStyle(
                                fontSize: 20,
                                height: 2,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'All the advanced features for scaling your',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          Text(
                            'business.',
                            style: TextStyle(color: Colors.grey[700]),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Features',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  featurewidget(
                      icon: Icons.language,
                      title: 'Custome Domain Name',
                      subtitle:
                          'Get your own custom domain and build\nyour brand on the internet'),
                  SizedBox(
                    height: 10,
                  ),
                  featurewidget(
                      icon: Icons.verified_outlined,
                      title: 'Verified seller badge',
                      subtitle:
                          'Get green verified badge under your\nstore name and build trust'),
                  SizedBox(
                    height: 10,
                  ),
                  featurewidget(
                      icon: Icons.ondemand_video,
                      title: 'Dukaan for PC',
                      subtitle:
                          'Access all the exclusive premium\nfeatures on Dukaan for PC'),
                  SizedBox(
                    height: 10,
                  ),
                  featurewidget(
                      icon: Icons.headset_mic_outlined,
                      title: 'Prioroty support',
                      subtitle:
                          'Get your questions resolved with our\npriority customer support.'),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('What is Dukaan Premium',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            YouTubeWidget(),
            SizedBox(
              height: 7,
            ),
            Divider(
              thickness: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Frequently asked questions',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            faq(
                text1: paragraph,
                icon: '',
                text: 'What type of buisinesses can use Dukaan\n premium?'),
            const Divider(),
            faq(icon: '', text: 'What is your refund policy?'),
            Divider(),
            faq(
                icon: '',
                text:
                    'Will there be an automatic charge after the\npaid trial?'),
            Divider(),
            faq(icon: '', text: 'What payment method do you offer?'),
            Divider(),
            faq(icon: '', text: 'What happens when my free trial ends?'),
            Divider(),
            faq(icon: '', text: 'What are the terms for the custom domain?'),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Need Help? Get in touch',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  lastContainer(
                      icon: Icons.messenger_outline, text: 'Live Chat'),
                  SizedBox(
                    width: 25,
                  ),
                  lastContainer(icon: Icons.phone, text: 'Phone Call')
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 15),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Select Domain',
                        style: TextStyle(
                            color: Color.fromARGB(255, 12, 157, 219),
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 50,
                      width: 190,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Get Premium',
                          style: TextStyle(fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  lastContainer({required icon, required text}) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 100,
        width: 170,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            Text(text),
          ],
        ),
      ),
    );
  }

  featurewidget({required icon, required title, required subtitle}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 35,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, height: 1),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Colors.grey[700],
        ),
      ),
    );
  }
}

class faq extends StatefulWidget {
  String icon;
  String text;
  String text1;
  faq({super.key, required this.icon, required this.text, this.text1 = ""});

  @override
  State<faq> createState() => _faqState();
}

class _faqState extends State<faq> {
  var changableicons = Icons.add;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        trailing: Icon(
          changableicons,
          color: Colors.black,
        ),
        onExpansionChanged: (value) {
          setState(() {
            if (value == true) {
              changableicons = Icons.minimize;
            } else {
              changableicons = Icons.add;
            }
          });
        },
        title: Text(
          widget.text,
          style: TextStyle(color: Colors.black),
        ),
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.text1,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey)))
        ]);
  }
}
