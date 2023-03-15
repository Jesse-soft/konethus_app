import 'package:flutter/material.dart';
import 'package:konethus_app/components/cupertino_button.dart';

import '../../../components/constants.dart';

class PostScreen extends StatefulWidget {
  static String id = 'post_screen';
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

final postController = TextEditingController();

class _PostScreenState extends State<PostScreen> {
  Column postFunction() {
    List<IconData> icons = [
      Icons.image_outlined,
      Icons.video_camera_front_outlined,
      Icons.edit_document,
      Icons.emoji_emotions_outlined,
      Icons.poll_outlined
    ];
    List<String> text = [
      'Add photo',
      'Add a video',
      'Add a document( jpeg, png, pdf)',
      'Celebrate an occasion',
      'Create a Poll'
    ];
    return Column(
      children: List.generate(
        5,
        (index) => GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  icons[index],
                ),
              ),
              Text(
                text[index],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 18,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          radius: 40,
                          child: Image.asset(
                            'assets/images/circle_avar_!.png',
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'widget.name',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'widget.description',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 15,
                      left: 20,
                      right: 10,
                    ),
                    child: TextFormField(
                      controller: postController,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        hintText: 'What do you want to talk about?',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(
                            183,
                            158,
                            158,
                            158,
                          ),
                          fontSize: 13,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            postFunction(),
            cupertinoButton(
              () {},
              const Text(
                'Create Post',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              10,
              10,
            )
          ],
        ),
      ),
    );
  }
}
