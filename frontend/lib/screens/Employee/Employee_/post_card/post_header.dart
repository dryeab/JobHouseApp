import 'package:flutter/material.dart';
import 'package:frontend/models/post.dart';
import 'package:frontend/repository/secureStorage.dart';

import 'bookmark_popup.dart';

class PostHeader extends StatefulWidget {
  final Post post;
  const PostHeader({Key? key, required this.post}) : super(key: key);

  @override
  State<PostHeader> createState() => _PostHeaderState();
}

class _PostHeaderState extends State<PostHeader> {
   late final String? id;

  @override
  void initState() {
    // TODO: implement initState
    StorageService storage = StorageService();
    getInfo() async {
      id = await storage.getId();
    }

    super.initState();
    getInfo();
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            print('go to the user\'s profile page');
            //TODO: go to the user's profile;
          },
          child: Row(
            children: [
              // CircleAvatar(
              //   backgroundColor: Color.fromARGB(255, 150, 159, 163),
              //   minRadius: 30,
              //   maxRadius: 31,
              //   backgroundImage:
              //       NetworkImage(post.posterProfilePicture!),
              // ),
              const SizedBox(
                width: 13,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
<<<<<<< HEAD
                  // Text(
                  //   post.posterName!,
                  //   style: const TextStyle(
                  //     fontSize: 18,
                  //     fontWeight: FontWeight.w500,
                  //   ),
                  // ),
=======
                  Text(
                    widget.post.posterName ?? "Yeabsira Driba",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
>>>>>>> ccc02864daabba97b298dc1dfbdf58363dbce7c3
                  const SizedBox(
                    height: 3.0,
                  ),
                  Text("Jan, 31"), // TODO: change the date to a proper data
                ],
              ),
            ],
          ),
        ),
        MouseRegion(
          cursor: SystemMouseCursors.text,
          child: IconButton(
            onPressed: () {
              popBookmark(context, widget.post, id);
            },
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
