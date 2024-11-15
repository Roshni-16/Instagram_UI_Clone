import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        //-------------App Bar---------------------------
        appBar: AppBar(
          title: const Icon(Icons.lock_outline_sharp),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_box_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.dehaze_sharp),
            ),
          ],
        ),
        //---------------------------------------------------------------
        backgroundColor: Colors.white,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 13,
                              vertical: 10,
                            ),
                            child: ClipOval(
                              child: SizedBox(
                                width: 80,
                                height: 80,
                                child: CircleAvatar(
                                  radius: 32,
                                  backgroundImage: AssetImage(
                                    'images/1.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Text(
                                    '10',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 53,
                                  ),
                                  Text(
                                    '30',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 53,
                                  ),
                                  Text(
                                    '50',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 53,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    'Posts',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    'Followers',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  SizedBox(
                                    width: 19,
                                  ),
                                  Text(
                                    'Following',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Roshni',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Self Obsessed..',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                alignment: Alignment.center,
                                height: 25,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          218, 189, 189, 189)),
                                ),
                                child: const Text(
                                  'Edit Your Profile',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                alignment: Alignment.center,
                                height: 25,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          218, 189, 189, 189)),
                                ),
                                child: const Text(
                                  'Share Profile',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          218, 189, 189, 189)),
                                ),
                                child: const Icon(
                                  Icons.person_add_outlined,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //------------------------------Highlight-------------------------------
                      Row(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                1,
                                (index) => Container(
                                  padding: const EdgeInsets.all(10),
                                  child: const Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                        // backgroundImage: AssetImage(Icon(Icons.add)),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Create Highlight",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black87),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //--------------------tab grid..------------------------------------
                      const SizedBox(height: 5),
                      const SizedBox(
                        width: double.infinity,
                        height: 35,
                        child: TabBar(
                          unselectedLabelColor: Colors.grey,
                          labelColor: Colors.black,
                          indicatorColor: Colors.black,
                          tabs: [
                            Icon(Icons.grid_on),
                            Icon(Icons.video_collection),
                            Icon(Icons.perm_contact_cal_outlined),
                          ],
                        ),
                      ),

                      //------------------------------------posts----------------------------
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  } 
}
