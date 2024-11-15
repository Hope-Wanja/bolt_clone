import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: SingleChildScrollView(
        child: Padding(
           padding: const EdgeInsets.all(12.0),
         child: Column(
          children: [
            Text('Version CA.109.0',  style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 20),
                    const  SizedBox(height: 2),
                    AboutPageMenuWidget(title: "Rate the app", icon: Icons.star, onPress: () {}),

                     const Divider(),
                    const  SizedBox(height: 2),
                    AboutPageMenuWidget(title: "Like us on Facebook", icon: Icons.thumb_up, onPress: () {}),

                     const Divider(),
                    const  SizedBox(height: 2),
                    AboutPageMenuWidget(title: "Solutions for work rides", icon: Icons.shopping_bag, onPress: () {}),

                     const Divider(),
                    const  SizedBox(height: 2),
                    AboutPageMenuWidget(title: "Careers  at Bolt", icon: Icons.person, onPress: () {}),

                     const Divider(),
                    const  SizedBox(height: 2),
                    AboutPageMenuWidget(title: "Legal", icon: Icons.house, onPress: () {}),

                     const Divider(),
                    const  SizedBox(height: 2),
                    AboutPageMenuWidget(title: "Privacy", icon: Icons.key, onPress: () {}),

          ],
         ),
        ),
      ),
    );
  }
}

class AboutPageMenuWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPress;

  const AboutPageMenuWidget({
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