import 'dart:async';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:relaxify/MeditationCompletePage.dart';

class MusicPlayerPage extends StatefulWidget {
  const MusicPlayerPage({Key? key}) : super(key: key);

  @override
  _MusicPlayerPageState createState() => _MusicPlayerPageState();
}

class _MusicPlayerPageState extends State<MusicPlayerPage> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  bool flag = true;
  late Stream<int> timerStream = Stream<int>.empty();
  late StreamSubscription<int> timerSubscription;
  String hoursStr = '00';
  String minutesStr = '00';
  String secondsStr = '00';
  bool isPaused = false;

  Stream<int> stopWatchStream() {
    late StreamController<int> streamController;
    late Timer? timer;
    Duration timerInterval = Duration(seconds: 1);
    int counter = 0;

    void stopTimer() {
      if (timer != null) {
        timer?.cancel();
        timer = null;
        counter = 0;
        streamController.close();
      }
    }

    void tick(_) {
      counter++;
      streamController.add(counter);
      if (!flag) {
        stopTimer();
      }
    }

    void startTimer() {
      timer = Timer.periodic(timerInterval, tick);
    }

    streamController = StreamController<int>(
      onListen: startTimer,
      onCancel: stopTimer,
      onResume: startTimer,
      onPause: stopTimer,
    );

    return streamController.stream;
  }

  @override
  void initState() {
    super.initState();

    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.zero,
                child: Container(
                  width: 330,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 150,
                        width: 200,
                        padding: EdgeInsets.only(left: 10),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '$hoursStr:$minutesStr:$secondsStr',
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            timerSubscription.pause();
                            setState(() {
                              isPaused = true;
                            });
                            _showConfirmationDialog();
                            audioPlayer.stop();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey.shade800,
                          ),
                          child: Text('Complete'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/musicwallpaper/musicposter1.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Ambient songs',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade900,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Artist Name',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade900,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Slider(
                      min: 0,
                      activeColor: Colors.black,
                      inactiveColor: Colors.black12,
                      thumbColor: Colors.black38,
                      max: duration.inSeconds.toDouble(),
                      value: position.inSeconds.toDouble(),
                      onChanged: (value) async {
                        final position = Duration(seconds: value.toInt());
                        await audioPlayer.seek(position);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(formatTime(position)),
                          Text(formatTime(duration - position)),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 35,
                          child: IconButton(
                            icon: Icon(Icons.stop),
                            onPressed: () async {
                              await audioPlayer.stop();
                              await audioPlayer.seek(Duration.zero);
                              final player = AudioCache(prefix: 'assets/music/');
                              final url = await player.load('Universe.mp3');
                              await audioPlayer.play(UrlSource(url.path));
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade700,
                          radius: 35,
                          child: IconButton(
                            icon: Icon(
                              isPlaying ? Icons.pause : Icons.play_arrow,
                              color: Colors.white,
                            ),
                            iconSize: 50,
                            onPressed: () async {
                              if(isPlaying){
                                await audioPlayer.pause();
                                timerSubscription.cancel();
                              } else {
                                final player = AudioCache(prefix: 'assets/music/');
                                final url = await player.load('Universe.mp3');
                                await audioPlayer.play(UrlSource(url.path));
                                timerStream = stopWatchStream();
                                timerSubscription = timerStream.listen((int newTick) {
                                  setState(() {
                                    hoursStr =
                                        ((newTick / (60 * 60)) % 60).floor().toString().padLeft(2, '0');
                                    minutesStr =
                                        ((newTick / 60) % 60).floor().toString().padLeft(2, '0');
                                    secondsStr =
                                        (newTick % 60).floor().toString().padLeft(2, '0');
                                  });
                                });
                              }
                            },
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 35,
                          child: IconButton(
                            icon: Icon(Icons.skip_next),
                            onPressed: () async {
                              await audioPlayer.stop();
                              await audioPlayer.seek(Duration.zero);
                              final player = AudioCache(prefix: 'assets/music/');
                              final url = await player.load('Universe.mp3');
                              await audioPlayer.play(UrlSource(url.path));
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmation'),
          content: Text('Are you sure you want to complete the meditation?'),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                timerSubscription.resume();
                setState(() {
                  isPaused = false;
                });
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            TextButton(
              child: Text('Complete'),
              onPressed: () {
                timerSubscription.cancel();
                timerStream = Stream<int>.empty(); // Reset timerStream to empty
                setState(() {
                  hoursStr = '00';
                  minutesStr = '00';
                  secondsStr = '00';
                });
                Navigator.of(context).pop(); // Close the dialog
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MeditationCompletePage()),
                );
              },
            ),
          ],
        );
      },
    );
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }
}

class _currentProgress {}
