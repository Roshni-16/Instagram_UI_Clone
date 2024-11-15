import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/add/add_post_screen.dart';
import 'package:instagram_clone/screens/add/add_reel_screen.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

int _currentIndex = 0;

class _AddPostState extends State<AddPost> {
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  onPageChanged(int page) {
    setState(() {
      _currentIndex = page;
    });
  }

  navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: pageController,
            onPageChanged: onPageChanged,
            children: const [
              AddPostScreen(),
              AddReelScreen(),
            ],
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            bottom: 10,
            right: _currentIndex == 0 ? 100 : 150,
            child: Container(
              width: 120,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      navigationTapped(0);
                    },
                    child: Text(
                      'Post',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: _currentIndex == 0 ? Colors.white : Colors.grey,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      navigationTapped(1);
                    },
                    child: Text(
                      'Reels',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: _currentIndex == 1 ? Colors.white : Colors.grey,
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
