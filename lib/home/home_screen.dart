
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  HomeScreen({Key? key}) : super(key: key);

  final widgets = [const VersesPageViewWidget(),
    const Center(child: Text('Placeholder for verse list'),),
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _selectedIndex = useState(0);

    return Scaffold(
    appBar: AppBar(title: const Text('Our Verses'),),
    bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.format_align_left_outlined),
            label: 'Verses',),
        ],
      currentIndex: _selectedIndex.value,
      //selectedItemColor: Colors.amber[800],
      onTap: (int selectedIndex) => _selectedIndex.value =  selectedIndex,
    ),
    body: widgets[_selectedIndex.value],
  );
  }
}

class VersesPageViewWidget extends StatelessWidget {
  const VersesPageViewWidget({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
          //onPageChanged: print,
          // Note: put analytics here.
          children: verses.map((e) =>
              Card(
                child: Center(child:
                  ListTile(title: Text(e.reference, textScaleFactor: 1.7,),
                  subtitle: Text(e.text, textScaleFactor: 1.7,),),),
              ),).toList(),
      );
  }
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
