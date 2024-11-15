import 'package:bolt_clone/screens/about_page.dart';
import 'package:bolt_clone/screens/help_page.dart';
import 'package:bolt_clone/screens/my_rides.dart';
import 'package:bolt_clone/screens/payment_page.dart';
import 'package:bolt_clone/screens/profile_page.dart';
import 'package:bolt_clone/screens/promotion_page.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:  Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage(
              "assets/images/yellow-black-sign-taxi-placed-top-car-night.jpg"),
            fit: BoxFit.cover,
            ),
        ),
      ),

      drawer: Drawer(
        child: ListView(children: [
          const ListTile(
            leading: Icon(Icons.person_2_outlined),
            title: Text('Wanja'),
            subtitle: Text('My Account'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Profile'),
            onTap: () => {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const ProfilePage(),
                ),
              )
            },
          ),
          ListTile(
            leading: const Icon(Icons.wallet),
            title: const Text('Payment'),
            onTap: () => {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const PaymentPage(),
                ),
              )
            },
          ),
          ListTile(
            leading: const Icon(Icons.car_crash_sharp),
            title: const Text('Promotion'),
            onTap: () => {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const PromotionPage(),
                ),
              )
            },
          ),
          ListTile(
            leading: const Icon(Icons.lock_clock_rounded),
            title: const Text('My Rides'),
            onTap: () => {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const RidesPage(),
                ),
              )
            },
          ),
          ListTile(
            leading: const Icon(Icons.question_mark_sharp),
            title: const Text('Help'),
            onTap: () => {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const HelpPage(),
                ),
              )
            },
          ),
          ListTile(
            leading: const Icon(Icons.cloud_circle_outlined),
            title: const Text('About'),
            onTap: () => {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const AboutPage(),
                ),
              )
            },
          ),
        
        ]),
      ),
      appBar: AppBar(
        title: const Text(
          'Bolt AppBar',
          style: TextStyle(fontSize: 34),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
