import 'package:flutter/material.dart';
import 'package:relaxify/SettingsPage.dart';
import 'package:relaxify/profile/CustomAppBar.dart';
import 'package:relaxify/profile/GraphCards.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ViewMoreData extends StatefulWidget {
  const ViewMoreData({Key? key}) : super(key: key);

  @override
  State<ViewMoreData> createState() => _ViewMoreDataState();
}

class _ViewMoreDataState extends State<ViewMoreData> {
  //scroll controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade100,
        appBar: CustomAppBar(
          title: 'Relaxify',
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
          onSettingsButtonPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()), // Navigate to the SettingsPage
            );
          },
        ),

        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //hi user!
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Data Summary',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'A summary of your app usage',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(
                  height: 35,
                ),

                //isi cards
                Container(
                  height: 500,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GraphCards(
                          maintitle: 'Focus Log',
                          monVal: 4.40,
                          tueVal: 2.50,
                          wedVal: 42.42,
                          thuVal: 10.40,
                          friVal: 100,
                          satVal: 88.99,
                          sunVal: 90.10,
                          subtitle: 'Weekly Summary',
                          hours1: '10',
                          hours2: '11',
                          hours3: '12',
                          date: '24/5',
                          time: '3.45 pm',
                      ),
                      GraphCards(
                          maintitle: 'Meditation Log',
                          monVal: 4.40,
                          tueVal: 2.50,
                          wedVal: 42.42,
                          thuVal: 10.40,
                          friVal: 100,
                          satVal: 88.99,
                          sunVal: 90.10,
                          subtitle: 'Weekly Summary',
                          hours1: '14',
                          hours2: '15',
                          hours3: '16',
                          date: '1/12',
                          time: '10.27 am',
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 8,
                ),

                //scroll bar
                SmoothPageIndicator(
                  controller: _controller,
                  count: 2,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Colors.grey.shade600,
                    dotHeight: 7,
                    dotWidth: 7,
                  ),
                ),

              ],
            ),


          ),
        )
    );
  }
}

