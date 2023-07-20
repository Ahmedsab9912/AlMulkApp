import 'package:flutter/material.dart';

import '../DashboardScreen/DashboardScreen.dart';

class OnboardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          FirstOnboardingScreen(
            onNext: () => _pageController.nextPage(
              duration: Duration(seconds: 1),
              curve: Curves.ease,
            ),
          ),
          SecondOnboardingScreen(
            onNext: () => _pageController.nextPage(
              duration: Duration(seconds: 1),
              curve: Curves.ease,
            ),
          ),
          ThirdOnboardingScreen(
            onNext: () => _pageController.nextPage(
              duration: Duration(seconds: 1),
              curve: Curves.ease,
            ),
          ),
          ForthOnboardingScreen(),
        ],
      ),
    );
  }
}

class FirstOnboardingScreen extends StatelessWidget {
  final VoidCallback onNext;

  FirstOnboardingScreen({required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/quran.png',
              height: 150,
              width: 150,
            ),
            SizedBox(height:55,),
            Text(
              'Read Quran EveryDay',
              style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[800]
              ),
            ),
            SizedBox(height:250,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    ],
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    ],
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    ],
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SecondOnboardingScreen extends StatelessWidget {
  final VoidCallback onNext;

  SecondOnboardingScreen({required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/sujud.png',
              height: 180,
              width: 180,
            ),
            SizedBox(height:50,),
            Text(
              'Prayer Timing',
              style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[800]
              ),
            ),
            SizedBox(height:250,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    ],
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    ],
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    ],
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ThirdOnboardingScreen extends StatelessWidget {
  final VoidCallback onNext;

  ThirdOnboardingScreen({required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/tasbih.png',
              height: 150,
              width: 150,
            ),
            SizedBox(height:55,),
            Text(
              'Tasbih For Allah',
              style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[800]
              ),
            ),
            SizedBox(height:250,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    ],
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    ],
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    ],
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ForthOnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/qibla.png',
              height: 100,
              width: 100,
            ),
            SizedBox(height:10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/quran.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(width: 20,),
                Image.asset(
                  'images/calander.png',
                  height: 100,
                  width: 100,
                ),
              ],
            ),
            SizedBox(height:55,),
            Text(
              'And Many More Things \nTo Explore',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[800]
              ),
            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DashboardPage(),
                    ));
              },
              child: Container(
                height: 60,
                width: 190,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Center(child: Text('Lets get Started',style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),)),
              ),
            ),
            SizedBox(height:170,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    ],
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    ],
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    ],
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text('')
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
