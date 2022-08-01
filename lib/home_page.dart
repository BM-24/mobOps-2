import 'package:flutter/material.dart';
import 'package:list_app/row_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const List<Map<String, String>> birds = [
    {
      'imageUrl':
          'https://www.allaboutparrots.com/wp-content/uploads/2020/09/what-are-green-parrots-called.jpg',
      'text': 'Parrot'
    },
    {
      'imageUrl':
          'https://cdn.britannica.com/92/152292-050-EAF28A45/Bald-eagle.jpg',
      'text': 'Eagle'
    },
    {
      'imageUrl':
          'https://www.allaboutbirds.org/guide/assets/photo/308074031-480px.jpg',
      'text': 'Pigeon'
    },
    {
      'imageUrl':
          'https://www.allaboutbirds.org/guide/assets/photo/59858041-480px.jpg',
      'text': 'Crow'
    },
    {
      'imageUrl':
          'https://www.allaboutbirds.org/guide/assets/photo/60386921-1280px.jpg',
      'text': 'Mourning Dove'
    },
    {
      'imageUrl':
          'https://www.allaboutbirds.org/guide/assets/photo/297087301-1280px.jpg',
      'text': 'Cardinal'
    },
    {
      'imageUrl':
          'https://www.allaboutbirds.org/guide/assets/photo/297902651-1280px.jpg',
      'text': 'Flicker'
    },
    {
      'imageUrl':
          'https://www.allaboutbirds.org/guide/assets/photo/304479371-1280px.jpg',
      'text': 'Blue Heron'
    },
    {
      'imageUrl':
          'https://www.allaboutbirds.org/guide/assets/photo/303618951-1280px.jpg',
      'text': 'Falcon'
    },
    {
      'imageUrl':
          'https://www.allaboutbirds.org/guide/assets/photo/306327341-1280px.jpg',
      'text': 'House Finch'
    },
    {
      'imageUrl':
          'https://www.allaboutbirds.org/guide/assets/photo/296733511-1280px.jpg',
      'text': 'Quail'
    },
    {
      'imageUrl':
          'https://www.allaboutbirds.org/guide/assets/photo/70095811-1280px.jpg',
      'text': 'Boreal Owl'
    },
  ];

  static const List<String> animals = [
    'Lions',
    'Tigers',
    'Elephants',
    'Hippos',
    'Crocodile',
    'Giraffes',
    'Zebra',
    'Deers',
    'Cheetahs',
    'Hyenas',
    'Koalas',
    'Pandas',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 4,
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: ListView.builder(
                  itemBuilder: (BuildContext ctx, int index) {
                    return RowItem(
                      imageUrl: birds[index]['imageUrl']!,
                      text: birds[index]['text']!,
                    );
                  },
                  itemCount: birds.length,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(),
              )
            ],
          ),
        ),
        Flexible(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Flexible(
                  flex: 2,
                  child: ListView.builder(
                    itemBuilder: ((context, index) {
                      return Container(
                        margin: const EdgeInsets.all(4.0),
                        padding: const EdgeInsets.all(16.0),
                        color: Colors.black12,
                        child: Text(
                          animals[index],
                          style: const TextStyle(fontSize: 20),
                        ),
                      );
                    }),
                    itemCount: animals.length,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
