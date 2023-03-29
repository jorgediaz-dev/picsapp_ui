import 'package:flutter/material.dart';

import '../tabs/feed_view.dart';
import '../tabs/reels_view.dart';
import '../tabs/tagged_view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<Widget> tabs = const [
    // Feed tab
    Tab(
      icon: Icon(
        Icons.image,
        color: Colors.grey,
      ),
    ),
    // Reels tab
    Tab(
      icon: Icon(
        Icons.video_collection,
        color: Colors.grey,
      ),
    ),
    // Tagged tab
    Tab(
      icon: Icon(
        Icons.bookmark,
        color: Colors.grey,
      ),
    ),
  ];

  final List<Widget> tabBarViews = [
    const FeedView(),
    const ReelsView(),
    const TaggedView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: ListView(
          children: [
            const SizedBox(
              height: 16,
            ),

            // header
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // follwers
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      '832',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                
                // image
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/profile_picsapp.jpeg'),
                          fit: BoxFit.cover),
                      // color: Colors.grey[300],
                    ),
                  ),
                ),
                
                // following
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '23.4k',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Following',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(
              height: 12,
            ),
            
            // name
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Jorge Díaz',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(
              height: 6,
            ),
            
            // bio
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Developer 📱',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                Text(
                  ' | ',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                Text(
                  'Football ⚽',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                Text(
                  ' | ',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                Text(
                  'Video Games 🎮',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),

            const SizedBox(
              height: 6,
            ),
            
            // link
            Text(
              'github.com/SoyJorgeDiaz5',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue[500],
              ),
            ),

            const SizedBox(
              height: 12,
            ),
            
            // buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Center(
                        child: Text('Edit Profile'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Center(
                        child: Text(
                          'Contact',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 6,
            ),

            TabBar(tabs: tabs),

            SizedBox(
              height: 1830,
              child: TabBarView(children: tabBarViews),
            ),
          ],
        ),
      ),
    );
  }
}
