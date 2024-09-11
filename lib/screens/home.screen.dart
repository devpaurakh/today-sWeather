import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  

  @override
  Widget build(BuildContext context) {

     final String apiKey = dotenv.env['API_KEY'] ?? 'No API key found';
    
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(3, -0.3),
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-3, -0.3),
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          "Kathmandu, Nepal",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Good Moring",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Image.asset(
                          height: 200, width: 200, "assets/daysun.png"),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Center(
                      child: Text(
                        "21°C",
                        style: TextStyle(
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const Center(
                      child: Column(
                        children: [
                          Text(
                            "THUNDERSTROME",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Friday 17 . 9:45 AM",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              height: 40,
                              width: 40,
                              "assets/daysun.png",
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              children: [
                                Text(
                                  "Sunrise",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "3:34 AM",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              height: 40,
                              width: 40,
                              "assets/nightmoon.png",
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            const Column(
                              children: [
                                Text(
                                  "Sunset",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "3:34 PM",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Divider(
                        color: Color.fromARGB(255, 63, 63, 63),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              height: 40,
                              width: 40,
                              "assets/thermomater.png",
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              children: [
                                Text(
                                  "Temp Max",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "40°C",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              height: 40,
                              width: 40,
                              "assets/thermomatermin.png",
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            const Column(
                              children: [
                                Text(
                                  "Temp Min",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "20°C",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
