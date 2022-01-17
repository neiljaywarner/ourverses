
import 'package:flutter/material.dart';
class VersesScreen extends StatelessWidget {
  VersesScreen({Key? key}) : super(key: key);

  final PageController _controller = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Our Verses'),),
    body: PageView(
      scrollDirection: Axis.vertical,
      controller:  _controller,
          onPageChanged: print,
          children: verses.map((e) =>
              Card(
                child: Center(child:
                  ListTile(title: Text(e.reference, textScaleFactor: 1.7,),
                  subtitle: Text(e.text, textScaleFactor: 1.7,),),),
              ),).toList(),
      ),
  );
}


// Note:see https://bible-api.com/romans+12:1-2
class DisplayVerse {
  DisplayVerse(this.reference, this.text);

  final String reference;
  final String text;
  
}

// https://bible-api.com/psalm+119:9-11
List<DisplayVerse> verses = [
  DisplayVerse('Psalms 119:9-11 WEB',
'''
How can a young person stay on the path of purity?
By living according to your word.
I seek you with all my heart;
do not let me stray from your commands.
I have hidden your word in my heart
that I might not sin against you.''',),
  DisplayVerse('Col 1:17 WEB ',
    'He is before all things, and in him all things are held together.',),
  DisplayVerse('Psalms 62:7 WEB', '''
  My salvation and my honor is with God.
The rock of my strength, and my refuge, is in God.''',)
];
