import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/emoticon_face.dart';
import 'package:flutter_application_1/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            //TOP ROW
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //sapaan
                      Column(
                        children: [
                          Text(
                            "Hi, user",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '29 April 2024',
                            style: TextStyle(color: Colors.blue[200]),
                          )
                        ],
                      ),

                      //notif
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                //SEARCHBAR
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                //4ICONS
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //bad
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '😭',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'bad',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    //fine
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '👌',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'fine',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    //well
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '😁',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'well',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    //excellent
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '😍',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'excellent',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 25,
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[100],
                child: Center(
                  child: Column(
                    children: [
                      //exercise heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exersises',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),

                      //listview exercise
                      Expanded(
                          child: ListView(
                        children: [
                          ExerciseTile(
                            icon: Icons.speaker,
                            exerciseName: 'Speaking skill',
                            numberOfExercise: 16,
                            color: Colors.orange,
                          ),
                          ExerciseTile(
                            icon: Icons.book,
                            exerciseName: 'reading skill',
                            numberOfExercise: 8,
                            color: Colors.green,
                          ),
                          ExerciseTile(
                            icon: Icons.add_comment,
                            exerciseName: 'writing skill',
                            numberOfExercise: 20,
                            color: Colors.pink,
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
