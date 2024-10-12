import 'package:flutter/material.dart';

class WordCard extends StatelessWidget {
  final Map<String, dynamic> wordData;

  WordCard({required this.wordData});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'word_card_${wordData['word']}',
      child: Card(
        margin: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PronunciationBar(),
              SizedBox(height: 16),
              Text(
                wordData['word'],
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                wordData['pronunciation'],
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: 16),
              Text(
                wordData['meaning'],
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 16),
              Wrap(
                spacing: 8,
                children: wordData['synonyms'].map<Widget>((synonym) {
                  return Chip(
                    label: Text(synonym),
                    backgroundColor: Theme.of(context)
                        .colorScheme
                        .secondary
                        .withOpacity(0.2),
                  );
                }).toList(),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.volume_up),
                    onPressed: () {
                      // Implement audio playback
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.mic),
                    onPressed: () {
                      // Implement voice input
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.favorite_border),
                    onPressed: () {
                      // Implement favoriting
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PronunciationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
        borderRadius: BorderRadius.circular(2),
      ),
      child: FractionallySizedBox(
        widthFactor: 0.7,
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ),
    );
  }
}
