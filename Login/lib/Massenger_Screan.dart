// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20,
        title: Row(
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://img.freepik.com/premium-vector/young-muslim-woman-wearing-hijab-with-flower-aesthetic-profile_637377-332.jpg?w=740'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Chat',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 30,
              backgroundColor: const Color.fromARGB(255, 243, 149, 33),
              child: Icon(
                Icons.camera_alt,
                size: 16,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 30,
              backgroundColor: const Color.fromARGB(255, 243, 149, 33),
              child: Icon(
                Icons.edit,
                size: 16,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[200],
                ),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Search",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20,
                  ) ,
                  itemCount: 5,
              ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ) ,
                  itemCount: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  //1. Bulid Item

  Widget buildChatItem() => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/premium-vector/young-muslim-woman-wearing-hijab-with-flower-aesthetic-profile_637377-332.jpg?w=740'),
              ),
              Padding(
                  padding: const EdgeInsetsDirectional.only(
                bottom: 20.0,
                end: 3.0,
              )),
              CircleAvatar(
                radius: 7,
                backgroundColor: Colors.white,
              ),
              CircleAvatar(
                radius: 6,
                backgroundColor: Colors.red,
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Samah Shamma',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Hello my name is Samah, i want to ask you somthing ',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: 7,
                        height: 7,
                        decoration: BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                      ),
                    ),
                    Text('2:00 pm'),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
  Widget buildStoryItem() => Container(
        width: 60,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/premium-vector/young-muslim-woman-wearing-hijab-with-flower-aesthetic-profile_637377-332.jpg?w=740'),
                ),
                Padding(
                    padding: const EdgeInsetsDirectional.only(
                  bottom: 20.0,
                  end: 3.0,
                )),
                CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.red,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Samah Shamma",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
}
