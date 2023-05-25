import 'package:flutter/material.dart';
import 'package:relaxify/MusicPlayerPage.dart';


List<String> meditationSteps = [
'1. Find a quiet and comfortable place to sit or lie down.',
'2. Close your eyes and take a few deep breaths to relax your body and mind.',
'3. Focus your attention on your breath. Notice the sensation of inhaling and exhaling.',
'4. If your mind wanders, gently bring your attention back to your breath without judgment.',
'5. Continue to observe your breath and allow any thoughts or distractions to pass by.',
'6. Practice this for a few minutes, gradually increasing the duration as you become more comfortable.',
'7. When you are ready to end the meditation, slowly open your eyes and take a moment to reorient yourself.'
];

class MeditationInfoPage extends StatefulWidget {
  const MeditationInfoPage({Key? key}) : super(key: key);

  @override
  State<MeditationInfoPage> createState() => _MeditationInfoPageState();
}

class _MeditationInfoPageState extends State<MeditationInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Meditation Name 1',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Direction',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (var i = 0; i < meditationSteps.length; i++)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    meditationSteps[i],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Container(
          margin: EdgeInsets.only(bottom: 16.0,left: 16.0,right: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black54,
                      ),
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.grey.shade100,
                        size: 15,
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Music Name',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                ],
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MusicPlayerPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey.shade800,
                ),
                child: Text(
                  'Start',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}







