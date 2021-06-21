import 'package:flutter/material.dart';
import 'dart:math';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double R = 1;
  double G = 1;
  double B = 1;
  Random randomNum = new Random();

  void generateRandomColor() {
    R = randomNum.nextDouble();
    G = randomNum.nextDouble();
    B = randomNum.nextDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'COLOR MIXER',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(
        255,
        (R * 255).floor(),
        (G * 255).floor(),
        (B * 255).floor(),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 100.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'RED\t\t\t\t\t\t\t\t\t\t\t',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.grey,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xfff50B18),
                      overlayColor: Color(0x29AB0501),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 40.0),
                    ),
                    child: Slider(
                      value: R,
                      onChanged: (newValue) {
                        setState(() {
                          R = newValue;
                        });
                      },
                      activeColor: Colors.red,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'GREEN\t\t\t\t\t\t',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.grey,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Colors.green.shade900,
                      overlayColor: Color(0x2900671B),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 40.0),
                    ),
                    child: Slider(
                      value: G,
                      onChanged: (newValue) {
                        setState(() {
                          G = newValue;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'BLUE\t\t\t\t\t\t\t\t\t',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.grey,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Colors.blue.shade900,
                      overlayColor: Color(0x29254146),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 40.0),
                    ),
                    child: Slider(
                      value: B,
                      onChanged: (newValue) {
                        setState(() {
                          B = newValue;
                        });
                      },
                      activeColor: Colors.blue,
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: (Container(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      generateRandomColor();
                    });
                  },
                ),
              )))
            ],
          ),
        ),
      ),
    );
  }
}
