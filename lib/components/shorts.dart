import 'package:flutter/material.dart';

class ShortsWidget extends StatelessWidget {
  const ShortsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context);
    List<String> username = [
      'Thatdevguy ',
      'The design class for newbies',
      'Thewriter’sHUb',
    ];
    List<String> description = [
      'For newbies developer',
      'everything design',
      'About channel'
    ];
    Map<String, String> content = {
      'DevOps': '1,2 k views',
      'Design in 30 mins': '1,2 k views',
      'Importance of drafting': '1,2 k views',
    };

    return Column(
      children: List.generate(
        3,
        ((index) {
          return Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(
                            0xff000000,
                          ),
                          Color(
                            0xff000000,
                          ),
                        ],
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/shorts_${index + 1}.jpg',
                      fit: BoxFit.fill,
                      height: _mediaquery.size.height * 0.85,
                      width: double.infinity,
                    ),
                  ),
                  Center(
                    heightFactor: 6.5,
                    child: Container(
                      padding: const EdgeInsets.all(
                        3,
                      ),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      height: 105,
                      width: 105,
                      child: Container(
                        padding: const EdgeInsets.all(
                          3,
                        ),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(
                            143,
                            0,
                            0,
                            0,
                          ),
                        ),
                        height: 80,
                        width: 80,
                        child: Container(
                          height: 90,
                          width: 90,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.play_arrow_outlined,
                              size: 60,
                              color: Color.fromARGB(
                                214,
                                255,
                                255,
                                255,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(255, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0),
                        ],
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(
                        top: _mediaquery.size.height * 0.02,
                        left: _mediaquery.size.height * 0.02,
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                content.keys.elementAt(index),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                content.values.elementAt(index),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const Text(
                                '24hours ago',
                                style: TextStyle(
                                  color: Color(
                                    0xffB0B0B0,
                                  ),
                                  fontSize: 11,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(0, 0, 0, 0),
                          Color.fromARGB(155, 0, 0, 0),
                        ],
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                        top: _mediaquery.size.height * 0.806,
                        left: _mediaquery.size.height * 0.02,
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            child: Image.asset(
                              'assets/images/shorts_avar_${index + 1}.png',
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                username[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                description[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: _mediaquery.size.height * 0.67,
                      left: _mediaquery.size.height * 0.38,
                    ),
                    child: Column(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.sms_outlined,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share_outlined,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        }),
      ),
    );
  }
}
