import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicPlayerPage extends StatefulWidget {
  const MusicPlayerPage({Key? key}) : super(key: key);

  @override
  _MusicPlayerPageState createState() => _MusicPlayerPageState();
}

class _MusicPlayerPageState extends State<MusicPlayerPage> {
  bool _isPlaying = false;
  double _currentProgress = 0.0;
  String _setTimerValue = '';
  AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void dispose() {
    super.dispose();
    _audioPlayer.release();
    _audioPlayer.dispose();
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
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        // Handle back button press
                      },
                    ),
                    Container(
                      height: 150,
                      width: 200,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          AspectRatio(
                            aspectRatio:1.0,
                            child: CircularProgressIndicator(
                              value: _currentProgress,
                              color: Colors.grey,
                              backgroundColor: Colors.grey[300],
                              strokeWidth: 5,
                            ),
                          ),
                          Text(
                            '00:00',
                            style: TextStyle(fontSize: 40),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: _isPlaying ? Icon(Icons.pause) : Icon(
                          Icons.play_arrow),
                      onPressed: () {
                        if (_isPlaying) {
                          _audioPlayer.pause();
                        } else {
                          _audioPlayer.resume();
                        }
                        setState(() {
                          _isPlaying = !_isPlaying;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Music Poster',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    TextField(
                      onChanged: (value) {
                        // Update the set timer value
                        setState(() {
                          _setTimerValue = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Daily goal',
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      onChanged: (value) {
                        // Update the set timer value
                        setState(() {
                          _setTimerValue = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Set Timer',
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        _startTimer();
                        _playSong();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade800,
                      ),
                      child: Text('Start'),
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

  void _startTimer() {
    // Implement your timer logic here
  }

  void _playSong() async {
  }
}
