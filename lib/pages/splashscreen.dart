import 'package:flutter/material.dart';
import 'package:laptop_harbor_app/user/welcome.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDEzfHxnbGFzc3klMjBvZmZlJTIwZGVza3xlbnwwfHx8fDE2OTcyNjEyNTF8&ixlib=rb-4.0.3&q=80&w=1080",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Faded overlay to make text more readable
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    child: Icon(
                      Icons.laptop_mac_outlined,
                      size: 80,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'L A P T O P    H A R B O U R',
                    style: TextStyle(
                      fontSize: 34,
                      // fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.5,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black.withOpacity(0.8),
                          offset: Offset(3.0, 3.0),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  AnimatedOpacity(
                    opacity: 1.0,
                    duration: Duration(seconds: 2),
                    child: Text(
                      'Find the Best Laptops Here!',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
