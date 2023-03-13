import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        6,
        ((index) {
          return Container(
            margin: const EdgeInsets.all(
              8,
            ),
            child: Column(
              children: [
                index == 0
                    ? Container(
                        padding: const EdgeInsets.all(
                          8,
                        ),
                        margin: const EdgeInsets.only(
                          top: 8,
                        ),
                        child: Stack(
                          children: [
                            Container(
                              color: Colors.white,
                              height: 62,
                              width: 35,
                            ),
                            Container(
                              height: 52,
                              width: 52,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/circle_avatar_7.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Positioned(
                              top: 37,
                              left: 32,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: const BoxDecoration(
                                  color: Color(
                                    0xff00523B,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 12,
                                  weight: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    : Container(
                        padding: const EdgeInsets.all(
                          2,
                        ),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(
                            0xff0065FF,
                          ),
                        ),
                        height: 88,
                        width: 88,
                        child: Container(
                          padding: const EdgeInsets.all(
                            2,
                          ),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          height: 80,
                          width: 80,
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/circle_avatar_${index + 2}.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Text(
                    index == 0 ? 'You' : 'Avatar_${index}name',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
