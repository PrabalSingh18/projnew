import 'package:flutter/material.dart';
import 'package:flutter_application_1/navbar.dart';
import 'package:flutter_application_1/wordcard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController();
  List<Map<String, dynamic>> words = [
    {
      'word': 'Frantic',
      'pronunciation': '/ˈfræntɪk/',
      'meaning': 'I spent three frantic days trying to get everything ready',
      'synonyms': ['frenzied', 'rabid', 'mad'],
    },
    // Add more words here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Vocab App'),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => Navigator.pushNamed(context, '/settings'),
          ),
        ],
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: words.length,
        itemBuilder: (context, index) {
          return WordCard(wordData: words[index]);
        },
      ),
      bottomNavigationBar: BottomNavBar(
        onProfileTap: () => Navigator.pushNamed(context, '/profile'),
      ),
    );
  }
}
