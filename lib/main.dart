import 'package:facebook/messenger.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(FacebookCloneApp());

class FacebookCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('facebook',style: TextStyle(color: Colors.blue,fontSize: 25, fontWeight: FontWeight.w900),),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.facebookMessenger),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=> MessengerScreen()));
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          _createPostSection(),
          _createStoriesSection(),
          _createFeedSection(),
          _createFeedSection1(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Friends',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  Widget _createPostSection() {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://scontent.fdac45-1.fna.fbcdn.net/v/t39.30808-6/434949431_122135910356187054_8631206803826472668_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFgMowQQWj-VQy8vJf4jVWH2bHp7sa5pGzZsenuxrmkbL4wexnPso0pWppz6JhE_w3iw2bbJmLRF65sFzMxBHbd&_nc_ohc=zBIZ-O8baPkQ7kNvgFKasTr&_nc_ht=scontent.fdac45-1.fna&oh=00_AYCInaAxl7irw6Q1aTFXOYo0PFb1OPeq9eMmJMtfQ-8Pfg&oe=6650DF74'),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "What's on your mind?",
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createStoriesSection() {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(5, (index) {
          return Container(
            width: 80,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://vineview.com/wp-content/uploads/2017/07/Facebook-no-profile-picture-icon-620x389.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          );
        }),
      ),
    );
  }

  Widget _createFeedSection() {
    return Column(
      children: List.generate(1, (index) {
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=1380&t=st=1716190223~exp=1716190823~hmac=7ea47f36d077381781f650025369619faeda989d85d2f62091384bb468b96ad1'),
                ),
                title: Text('Mac Jonson'),
                subtitle: Text('2h ago'),
                trailing: Icon(Icons.more_horiz),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('My New Car.'),
              ),
              Image.network('https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(FontAwesomeIcons.thumbsUp),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.comment),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.share),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

Widget _createFeedSection1() {
  return Column(
    children: List.generate(1, (index) {
      return Card(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://st2.depositphotos.com/1001951/6529/i/450/depositphotos_65293179-stock-photo-man-in-checkered-shirt-wooden.jpg'),
              ),
              title: Text('Luah John'),
              subtitle: Text('4h ago'),
              trailing: Icon(Icons.more_horiz),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text('My House.'),
            ),
            Image.network('https://www.bhg.com/thmb/3Vf9GXp3T-adDlU6tKpTbb-AEyE=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/white-modern-house-curved-patio-archway-c0a4a3b3-aa51b24d14d0464ea15d36e05aa85ac9.jpg'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(FontAwesomeIcons.thumbsUp),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.comment),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.share),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }),
  );
}