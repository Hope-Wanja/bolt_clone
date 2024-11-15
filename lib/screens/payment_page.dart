import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
const PaymentPage({Key? key}) : super(key: key);
  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding:const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 111, 188, 250),
                    borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                   Text('Bolt Balance',  style: Theme.of(context).textTheme.bodyMedium),
              Text('Ksh 0', style: Theme.of(context).textTheme.titleLarge),
                ],
                    ),
                  ),
                  const  SizedBox(height: 5),
                    PaymentPageMenuWidget(title: "What is Bolt balance?", icon: Icons.question_mark_rounded, onPress: () {}),
                
                    const  SizedBox(height: 5),
                    PaymentPageMenuWidget(title: "See Bolt balance transactions", icon: Icons.punch_clock_outlined, onPress: () {}),

                    const Divider(),
                    Text('Payment Methods', style: Theme.of(context).textTheme.titleLarge),
                    const  SizedBox(height: 2),
                    PaymentPageMenuWidget(title: "M-Pesa", icon: Icons.phone_android, onPress: () {}),

                    const Divider(),
                    const  SizedBox(height: 2),
                    PaymentPageMenuWidget(title: "Airtel Money", icon: Icons.wallet, onPress: () {}),

                     const Divider(),
                    const  SizedBox(height: 2),
                    PaymentPageMenuWidget(title: "Equitel", icon: Icons.credit_card, onPress: () {}),


                     const Divider(),
                    const  SizedBox(height: 2),
                    PaymentPageMenuWidget(title: "Cash", icon: Icons.attach_money, onPress: () {}),

                     const Divider(),
                    const  SizedBox(height: 2),
                    PaymentPageMenuWidget(title: "Add debit/credit card", icon: Icons.add, onPress: () {}),

                    

                  ],
            
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}

class PaymentPageMenuWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPress;

  const PaymentPageMenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}