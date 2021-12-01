import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text(
          'facebook',
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Colors.white,
          ),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        // post create
        children: [
          Container(
            height: 120,
            color: Colors.black,
            padding: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/user1.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 46,
                          padding: EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(
                              width: 1,
                              color: Colors.white,
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "What`s on your mind?",
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Colors.grey[500],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Live",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 14, bottom: 14),
                        width: 1,
                        color: Colors.grey[300],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.photo,
                              color: Colors.green,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Photo",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 14, bottom: 14),
                        width: 1,
                        color: Colors.grey[300],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Check in",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // post stories
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            height: 200,
            color: Colors.black,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10),
                makeStory(
                  storyImage: "assets/images/story1.jpg",
                  userImage: "assets/images/user1.jpg",
                  userName: "User One",
                ),
                makeStory(
                  storyImage: "assets/images/story2.jpg",
                  userImage: "assets/images/user2.jpg",
                  userName: "User Two",
                ),
                makeStory(
                  storyImage: "assets/images/story3.jpg",
                  userImage: "assets/images/user3.jpg",
                  userName: "User Three",
                ),
                makeStory(
                  storyImage: "assets/images/story4.jpg",
                  userImage: "assets/images/user4.jpg",
                  userName: "User Four",
                ),
                makeStory(
                  storyImage: "assets/images/story5.jpg",
                  userImage: "assets/images/user5.jpg",
                  userName: "User Five",
                ),
              ],
            ),
          ),

          // post feed
          makeFeed(
            userName: "User One",
            userImage: "assets/images/user1.jpg",
            feedTime: "1 hr ago",
            feedText:
                "All the Lorem Ipsum generators on the Internet to repeat predefined.",
            feedImage: "assets/images/story1.jpg",
          ),

          makeFeed(
            userName: "User Two",
            userImage: "assets/images/user2.jpg",
            feedTime: "1.5 hr ago",
            feedText:
                "All the Lorem Ipsum generators on the Internet to repeat predefined.",
            feedImage: "assets/images/story2.jpg",
          ),

          makeFeed(
            userName: "User Three",
            userImage: "assets/images/user3.jpg",
            feedTime: "35 min ago",
            feedText:
                "All the Lorem Ipsum generators on the Internet to repeat predefined.",
            feedImage: "assets/images/story3.jpg",
          ),

          makeFeed(
            userName: "User Four",
            userImage: "assets/images/user4.jpg",
            feedTime: "2 hr ago",
            feedText:
                "All the Lorem Ipsum generators on the Internet to repeat predefined.",
            feedImage: "assets/images/story4.jpg",
          ),

          makeFeed(
            userName: "User Five",
            userImage: "assets/images/user5.jpg",
            feedTime: "53 min ago",
            feedText:
                "All the Lorem Ipsum generators on the Internet to repeat predefined.",
            feedImage: "assets/images/story5.jpg",
          ),
        ],
      ),
    );
  }

  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 2),
                      image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Ikkinch Row
                ],
              ),
              Text(
                userName,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // #header
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(userImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userName,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 3),
                            Text(
                              feedTime,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz,
                        size: 30,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  feedText,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    height: 1.5,
                    letterSpacing: .7,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),

          // photo

          Container(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Image(
                            image: AssetImage(feedImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Image(
                            image: AssetImage(feedImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // #likes
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(
                      offset: Offset(-5, 0),
                      child: makeLove(),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "2.5k",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Text(
                  "400 Comment",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          // #like, comment, share
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(
          Icons.thumb_up,
          size: 12,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(
          Icons.favorite,
          size: 12,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget makeLikeButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.thumb_up,
                color: isActive ? Colors.blue : Colors.white, size: 18),
            SizedBox(width: 5),
            Text(
              "Like",
              style: TextStyle(color: isActive ? Colors.blue : Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat, color: Colors.white, size: 18),
            SizedBox(width: 5),
            Text(
              "Comment",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeShareButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.share, color: Colors.white, size: 18),
            SizedBox(width: 5),
            Text(
              "Share",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
