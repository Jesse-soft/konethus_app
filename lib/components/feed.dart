import 'package:flutter/material.dart';

class Feeds extends StatefulWidget {
  const Feeds({
    super.key,
    required this.circleAvatar,
    required this.name,
    required this.description,
    required this.image,
  });

  final String circleAvatar;
  final String name;
  final String description;
  final String image;
  @override
  State<Feeds> createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
  bool isLiked = false;

  int _reactions = 0;

  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context);
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    child: Image.asset(
                      widget.circleAvatar,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.description,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_horiz,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          onDoubleTap: () {
            setState(() {
              isLiked = !isLiked;
              isLiked ? _reactions++ : _reactions--;
            });
          },
          child: Image.asset(
            widget.image,
            width: double.infinity,
            height: _mediaquery.size.height * 0.4,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              isLiked = !isLiked;
                              isLiked ? _reactions++ : _reactions--;
                            });
                          },
                          icon: isLiked
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : const Icon(
                                  Icons.favorite_border_outlined,
                                ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.sms_outlined,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share_outlined,
                        ),
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_outline,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text(
                      _reactions == 0 ? '' : '$_reactions Reactions',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: SingleChildScrollView(
                      child: Row(
                        children: const [
                          Text(
                            'Dartjessigirl90',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'My View vsYours?',
                          ),
                          Text(
                            '#Codinggee#backend#Dev',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                            overflow: TextOverflow.clip,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'View all comments',
                          style: TextStyle(
                            color: Color.fromARGB(
                              183,
                              158,
                              158,
                              158,
                            ),
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                          ),
                          child: Text(
                            '24 hours ago',
                            style: TextStyle(
                              color: Color.fromARGB(
                                183,
                                158,
                                158,
                                158,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
