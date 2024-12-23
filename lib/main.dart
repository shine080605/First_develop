import 'package:flutter/material.dart';
import 'package:myapp/widgets/button.dart';
import 'package:myapp/widgets/currency_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff181818),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Hello Sh1neX',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "Welcome Back!",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Total Balance',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const Text(
                    '\$ 5 194 382',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                        text: 'Transfer',
                        backgroundcolor: const Color(0xFFF1B33B),
                        textcolor: Colors.black,
                        circle: BorderRadius.circular(60),
                      ),
                      Button(
                          text: 'Request',
                          backgroundcolor: const Color(0xFF1F2123),
                          textcolor: Colors.white,
                          circle: BorderRadius.circular(60),
                          ),
                          
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "Wallets",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CurrencyCard(
                      name: 'Euro',
                      code: 'EUR',
                      amount: '6 248',
                      icon: Icons.euro_rounded,
                      isInverted: false,
                      xPos: 0,
                      yPos: 0,),
                    const CurrencyCard(
                        name: 'Bitcoin',
                        code: 'BTC',
                        amount: '9 785',
                        icon: Icons.currency_bitcoin,
                        isInverted: true,
                        xPos: 0,
                        yPos: -20,),
                         const CurrencyCard(
                        name: 'Dollar',
                        code: 'USD',
                        amount: '428',
                        icon: Icons.attach_money_outlined,
                        isInverted: false,
                        xPos: 0,
                        yPos: -40,),
  ]),
                  
                     
                  ),        
                
              )),
        );
  }
}
