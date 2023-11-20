import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DataModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginPage(),
          '/home': (context) => const HomePage(),
          '/news1': (context) => const NewsPage(
                title:
                    "Mirziyoyev reiterates Uzbekistan’s support for Palestinian people to have their own state and calls for a cease-fire",
                image: 'lib/images/news1.jpg',
                content:
                    '\“The Israeli-Palestinian war in the Middle East, which poses a serious threat to global peace and security, is of great concern to all of us. Regrettably, it is the civilian population, particularly women, children, and the elderly, who suffer the most and become victims of these violent conflicts,\” Mirziyoyev said.\n According to the president, the risk of war spreading throughout the region is becoming increasingly real. \n \“The conflict must not be allowed to escalate into a large-scale war. We urge both sides to cease fire, start peace negotiations, and come to a reasonable compromise,\” Shavkat Mirziyoyev said. \“We once again reiterate our firm position on the Palestinian people’s right to have their own state, as confirmed by the UN resolutions.',
              ),
          '/news2': (context) => const NewsPage(
                title:
                    'New tariffs to be introduced in Tashkent public transport',
                image: 'lib/images/news2.jpg',
                content:
                    'A new tariff plan will be introduced in Tashkent public transport, the press service of the main transport department of Tashkent city reported. \n According to it, the one-time price of a public transport ticket will change to 2,000 soums, and for passengers paying through ATTO transport cards, it will change to 1,600 soums. \n If passengers use the same type of transport for the second time within one hour to their destination, they will pay 400 soums for the ticket. \n During one hour, the 3rd and 4th movements of passengers to a specific destination using the same transport type will be free of charge.',
              ),
          '/news3': (context) => const NewsPage(
                title: 'Onix and Tracker cars withdrawn from sale',
                image: 'lib/images/news3.jpg',
                content:
                    'UzAuto Motors has stopped issuing contracts for Chevrolet Onix and Tracker without any explanation. \n According to Autostrada, the cheapest car that can be bought now is Malibu XL for 420 million soums. \n UzAuto Motors has stopped issuing contracts for Chevrolet Tracker and Onix cars. Also, there is currently no option to conclude an online contract through the website. \n Reportedly, the staff of car dealerships and GM Uzbekistan hotline could not explain when the contract issuance will resume. \n According to the publication, suspension of contract issuance is usually associated with inventory and subsequent price increases. For example, in the last 5 years, UzAuto Motors stopped selling cars before raising prices on various pretexts. Sales for 2020, 2021 and 2022 resumed in March. \n The last time the Tracker price increased was in January 2023, while the Onix price was announced at the end of December 2022.',
              ),
        },
      ),
    );
  }
}

class DataModel extends ChangeNotifier {
  String _message = '';

  String get message => _message;

  void setMessage(String message) {
    _message = message;
    notifyListeners();
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        leading: const Icon(Icons.login),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField(
              items: const [
                DropdownMenuItem(
                  value: 'Kazakhstan',
                  child: Text('Kazakhstan'),
                ),
                DropdownMenuItem(
                  value: 'Kyrgyzstan',
                  child: Text('Kyrgyzstan'),
                ),
                DropdownMenuItem(
                  value: 'Tajikistan',
                  child: Text('Tajikistan'),
                ),
                DropdownMenuItem(
                  value: 'Turkmenistan',
                  child: Text('Turkmenistan'),
                ),
                DropdownMenuItem(
                  value: 'Uzbekistan',
                  child: Text('Uzbekistan'),
                ),
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Country',
              ),
              onChanged: (String? value) {},
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Home Page'),
        leading: const Icon(Icons.home),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Card(
                  child: Column(
                    children: [
                      Image.asset('lib/images/news1.jpg'),
                      const SizedBox(height: 10),
                      const Text(
                        "Mirziyoyev reiterates Uzbekistan’s support for Palestinian people to have their own state and calls for a cease-fire",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      // SizedBox(height: 10),
                      // Text(
                      // "\“The Israeli-Palestinian war in the Middle East, which poses a serious threat to global peace and security, is of great concern to all of us. Regrettably, it is the civilian population, particularly women, children, and the elderly, who suffer the most and become victims of these violent conflicts,\” Mirziyoyev said.\n According to the president, the risk of war spreading throughout the region is becoming increasingly real. \n \“The conflict must not be allowed to escalate into a large-scale war. We urge both sides to cease fire, start peace negotiations, and come to a reasonable compromise,\” Shavkat Mirziyoyev said. \“We once again reiterate our firm position on the Palestinian people’s right to have their own state, as confirmed by the UN resolutions.",
                      // ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/news1');
                        },
                        child: const Text('Read More'),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image.asset('lib/images/news2.jpg'),
                      const SizedBox(height: 10),
                      const Text(
                        'New tariffs to be introduced in Tashkent public transport',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      // SizedBox(height: 10),
                      // Text(
                      // 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam vel bibendum bibendum, sapien'),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/news2');
                        },
                        child: const Text('Read More'),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image.asset('lib/images/news3.jpg'),
                      const SizedBox(height: 10),
                      const Text(
                        'Onix and Tracker cars withdrawn from sale',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      // SizedBox(height: 10),
                      // Text(
                      // 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam vel bibendum bibendum, sapien sapien bibendum velit, euismod bibendum sapien sapien bibendum velit.',
                      // ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/news3');
                        },
                        child: const Text('Read More'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NewsPage extends StatelessWidget {
  final String title;
  final String image;
  final String content;

  const NewsPage({super.key,
    required this.title,
    required this.image,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article Page'),
        leading: const Icon(Icons.article),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Article Page'),
            Image.asset(image),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(content),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'Message from $title');
              },
              child: const Text('Back to Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}
