import 'package:agro_pro/Screens/profile.dart';
import 'package:agro_pro/Screens/GetInTouch.dart';
import 'package:agro_pro/Screens/yearly_production.dart';
import 'package:agro_pro/Widgets/CropContainer.dart';
import 'package:agro_pro/Widgets/custom_page_route.dart';
import 'package:agro_pro/Widgets/drawerlisrcart.dart';
import 'package:agro_pro/Widgets/table.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'Sensors.dart';
import 'cropDetail.dart';
import 'crops.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
    return Scaffold(
      backgroundColor: Colors.green[50],
        key: _scaffoldKey = new GlobalKey(),
        appBar: AppBar(
          title: Text(
            'AgroPro',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.green[400],
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFF43A047), Color(0xFFA5D6A7)]),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('AgroPro',
                        textAlign: TextAlign.center,
                        style:
                            Theme.of(context).textTheme.headline5!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://i.ibb.co/SVmqq8d/Logo.jpg')),
                        border: Border.all(color: Colors.green, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFB9F6CA),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset:
                                Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              DrawerListCard(
                  icon: Icons.thermostat_outlined,
                  item: 'Sensor Information',
                  press: () {
                    Navigator.push(
                      context,
                      CustomPageRoute(child: SensorInformation()),
                    );
                  }),
              DrawerListCard(
                icon: Icons.cloud,
                item: 'About Crops',
                press: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(child: Crops()),
                  );
                },
              ),
              DrawerListCard(
                icon: Icons.graphic_eq,
                item: 'Production Graphs',
                press: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(child: YearlyProduction(),),
                  );
                },
              ),
              DrawerListCard(
                icon: Icons.account_circle,
                item: 'Profile',
                press: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(child: ProfilePage()),
                  );
                },
              ),
              DrawerListCard(
                icon: Icons.call,
                item: 'Contact us',
                press: () {
                  Navigator.push(context, CustomPageRoute(child: GetInTouch()));
                },
              ),
              DrawerListCard(
                icon: Icons.lock,
                item: 'Logout',
                press: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Body());
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: kPrimaryColor.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  )
                ],
                color: Colors.green[100]),
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://i.ibb.co/SVmqq8d/Logo.jpg')),
                      border: Border.all(color: Colors.green, width: 2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green,
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFF388E3C), width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Grow Good,',
                              style: TextStyle(
                                  color: Colors.green[800],
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'With AgroPro',
                              style: TextStyle(
                                  color: Colors.green[800],
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            // color: Colors.green,
          ),
          SizedBox(
            height: 18,
          ),
          Text('Sensor Readings',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
          SizedBox(
            height: 5,
          ),
          Container(
            decoration: kDecorattion,
            child: SensorTable(),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Growing Crops',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CropWidget(
                      screen: () {
                        Navigator.push(
                          context,
                          CustomPageRoute(
                            child: CropDetails(
                              appBarHeading: 'WHEAT',
                              url:
                                  'https://5.imimg.com/data5/PW/AC/MY-38700875/m-p-origin-sarbati-wheat-500x500.jpg',
                            ),
                          ),
                        );
                      },
                      heading: 'WHEAT',
                      image:
                          'https://5.imimg.com/data5/PW/AC/MY-38700875/m-p-origin-sarbati-wheat-500x500.jpg',
                    ),
                    CropWidget(
                      image:
                          'https://www.agrifarming.in/wp-content/uploads/2015/06/Bamboo-Farming.jpg',
                      heading: 'SUGERCANE',
                      screen: () => Navigator.push(
                        context,
                        CustomPageRoute(
                          child: CropDetails(
                            appBarHeading: 'SUGERCANE',
                            url:
                                'https://www.agrifarming.in/wp-content/uploads/2015/06/Bamboo-Farming.jpg',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20, left: 10, right: 10),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.green[100],
              border: Border.all(color: Colors.green, width: 2),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFB9F6CA),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: Text(
              'Bot Battery: 66%',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                padding: EdgeInsets.all(9),
                decoration: kDecorattion,
                child: Column(
                  children: [
                    Text(
                      'About AgroPro',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    About(
                        'AgroPro is a highly efficient multitasking robot. It is pre-programmed to perform all the functions in an agricultural field from ploughing, sowing, irrigating, harvesting till transporting the crops. It comes with and Inbuilt sowing system, hydraulic based irrigation system and a detachable sickle and ploughing system. It works on solar power to save electricity and has high quality sensors like humidity and IR sensors. This robot is future of biotechnology.'),
                  ],
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            color: Colors.green[400],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconRow(
                    Image.network('https://i.ibb.co/GCkBJnC/1.png'), 'SOWING'),
                IconRow(Image.network('https://i.ibb.co/Hzp2Dfs/2.png'),
                    'PLOUGHING'),
                IconRow(Image.network('https://i.ibb.co/5WR7dWP/3.png'),
                    'HARVESTING'),
                IconRow(Image.network('https://i.ibb.co/gtbszdM/4.png'),
                    'TRANSPORATION')
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Container(
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            NetworkImage('https://i.ibb.co/PN4dXvF/35884.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.greenAccent,
                          offset: Offset(0, 2.5),
                          blurRadius: 5)
                    ]),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 20,
                      right: MediaQuery.of(context).size.width * .26,
                      child: Text(
                        'Drop Us a Line',
                        style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              ContactCompo(
                text: 'H-82, South City 2, Sector 50, Gurugram',
                icon: Icons.location_on,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              ContactCompo(
                text: '+91-9501006994, +91-9354416611, +91-7303218996',
                icon: Icons.phone_android,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              ContactCompo(icon: Icons.mail, text: 'sachitbansal2006@gmail.com')
            ],
          )
        ],
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  final textstyle =
      TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w700);

  final textsubstyle = TextStyle(
    fontSize: 20,
    color: Colors.grey[700],
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        productstyle(
            context,
            'https://preview.pixlr.com/images/800wm/1404/2/1404204161.jpg',
            'Wheat'),
        productstyle(
            context,
            'https://static.wikia.nocookie.net/goodfood/images/1/1d/Bowl-of-rice.jpg/revision/latest/scale-to-width-down/310?cb=20180620031058',
            'Rice')
      ],
    );
  }

  productstyle(BuildContext context, image, title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            // bottomLeft: Radius.circular(10),
            // bottomRight: Radius.circular(10)
            ),
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 8), // changes position of shadow
          ),
        ],
      ),
      // height: 600,
      width: MediaQuery.of(context).size.width - 20,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            image,
            fit: BoxFit.contain,
          ),
          Text(
            title,
            style: textstyle,
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.green[700],
                borderRadius: BorderRadius.circular(15),
              ),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'Health',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class About extends StatelessWidget {
  const About(
    this.content,
  ) : super();

  final String content;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      textAlign: TextAlign.justify,
    );
  }
}

class IconRow extends StatelessWidget {
  const IconRow(
    this.image,
    this.title,
  ) : super();

  final Widget image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            image,
            Text(
              title,
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
