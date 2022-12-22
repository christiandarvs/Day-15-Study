import 'package:flutter/material.dart';

final names = [
  'Christian Elijah Darvin',
  'Kobe Bryant',
  'Bryl Lim',
  'Kevin Durant',
  'Steph Curry',
  'Lebron James',
  'Michael Jordan',
  'Trae Young',
  'Ja Morant'
];

class HomeContents extends StatefulWidget {
  const HomeContents({super.key});

  @override
  State<HomeContents> createState() => _HomeContentsState();
}

class _HomeContentsState extends State<HomeContents> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 300,
                        height: 200,
                        child: Image.network(
                            'https://images.pexels.com/photos/4974915/pexels-photo-4974915.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        names[index],
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      const Text('Software Engineer - Flutter Developer'),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: (() {
                            final snackbar = SnackBar(
                              duration: const Duration(seconds: 3),
                              content: const Text('Hired!'),
                              action: SnackBarAction(
                                  label: 'Dismiss',
                                  onPressed: (() {
                                    ScaffoldMessenger.of(context)
                                        .clearSnackBars();
                                  })),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackbar);
                          }),
                          child: const Text('Hire Now!')),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
