import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:onboarding_up_app/home/note_home.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Image.asset('assets/images/Listenoryx.png'))),
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Expanded(
                      child: PageView(
                    controller: _controller,
                    children: const [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Gap(90),
                          Image(
                              image: AssetImage(
                                  'assets/images/Work From Home-2.png')),
                          Gap(40),
                          Text(
                            "Play Anywhere",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 28),
                          ),
                          Gap(10),
                          Text(
                            'The video call feature can be accessed from anywhere in your house to help you.',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: Color.fromARGB(255, 156, 155, 155)),
                            textAlign: TextAlign.center,
                          ),
                          Gap(30),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Gap(90),
                          Image(
                              image: AssetImage(
                                  'assets/images/Work From Home-1.png')),
                          Gap(40),
                          Text(
                            "Stay Healthy",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 28),
                          ),
                          Gap(10),
                          Text(
                            'Nobody likes to be alone and the built-in group video call feature helps you connect.',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: Color.fromARGB(255, 156, 155, 155)),
                            textAlign: TextAlign.center,
                          ),
                          Gap(30),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Gap(90),
                          Image(
                              image: AssetImage(
                                  'assets/images/Work From Home.png')),
                          Gap(40),
                          Text(
                            "Make Connections",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 28),
                          ),
                          Gap(10),
                          Text(
                            'While working the app reminds you to smile, laugh, walk and talk with those who matters.',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: Color.fromARGB(255, 156, 155, 155)),
                            textAlign: TextAlign.center,
                          ),
                          Gap(30),
                        ],
                      ),
                    ],
                  )),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: const SwapEffect(
                        dotHeight: 12,
                        dotWidth: 12,
                        activeDotColor: Colors.blue,
                        dotColor: Color.fromARGB(255, 177, 206, 246)),
                  ),
                  const Gap(10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NoteHome()));
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.0))),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 48, vertical: 10),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}
