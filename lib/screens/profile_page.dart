import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
// ignore: unnecessary_import
import 'package:flutter/services.dart';

class ProfilePage extends StatefulWidget {
const ProfilePage({Key? key}) : super(key: key);
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [

              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(image: AssetImage('assets/images/145857007_307ce493-b254-4b2d-8ba4-d12c080d6651.jpg'))),
                  ),
              
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.blue),
                        child: const Icon(

                     Icons.account_circle_outlined,
                        color: Colors.black,
                        size: 20,
                        ),                                                
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 10),
              Text('Hope Wanjaa Muiruri',  style: Theme.of(context).textTheme.titleLarge),
              Text('wanjaahope@gmail.com', style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 20),

              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed:() {
                    // Navigate to UpdateProfileScreen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, side: BorderSide.none, shape: const StadiumBorder(),
                  ),
                  child: const Text('Edit Profile', style: TextStyle(color: Colors.black),),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),

              
              ProfileMenuWidget(title: "Settings", icon: Icons.settings, onPress: () {}),
              ProfileMenuWidget(title: "Billing Details", icon: Icons.account_balance_wallet, onPress: () {}),
              ProfileMenuWidget(title: "User Management", icon: Icons.supervised_user_circle, onPress: () {}),
              const Divider(),
              const SizedBox(height: 10),
              ProfileMenuWidget(title: "Information", icon: Icons.info, onPress: () {}),
              ProfileMenuWidget(
                title: "Log Out", 
                icon:Icons.logout,
                onPress: () {
                     // Show logout confirmation dialog
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
} 

class ProfileMenuWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPress;

  const ProfileMenuWidget({
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