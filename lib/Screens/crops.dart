import 'package:agro_pro/Widgets/CropContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cropDetail.dart';

class Crops extends StatefulWidget {
  const Crops({Key? key}) : super(key: key);

  @override
  _CropsState createState() => _CropsState();
}

class _CropsState extends State<Crops> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        centerTitle: true,
        backgroundColor: Colors.green[400],
        title: Text(
          'About Crops',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.grey[200]),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFA7FFEB),
              Color(0xFFE8F5E9),
              Color(0xFFF1F8E9),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CropWidget(
                      screen: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return CropDetails(appBarHeading: 'WHEAT', url: 'https://5.imimg.com/data5/PW/AC/MY-38700875/m-p-origin-sarbati-wheat-500x500.jpg',);
                            },
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
                        MaterialPageRoute(
                          builder: (context) {
                            return CropDetails(appBarHeading: 'SUGERCANE', url: 'https://www.agrifarming.in/wp-content/uploads/2015/06/Bamboo-Farming.jpg',);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CropWidget(
                      screen: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return CropDetails(appBarHeading: 'MILETS', url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Grain_millet%2C_early_grain_fill%2C_Tifton%2C_7-3-02.jpg/220px-Grain_millet%2C_early_grain_fill%2C_Tifton%2C_7-3-02.jpg',);
                            },
                          ),
                        );
                      },
                      heading: 'MILETS',
                      image:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Grain_millet%2C_early_grain_fill%2C_Tifton%2C_7-3-02.jpg/220px-Grain_millet%2C_early_grain_fill%2C_Tifton%2C_7-3-02.jpg',
                    ),
                    CropWidget(
                      image:
                          'https://extension.usu.edu/preserve-the-harvest/images/white-rice.jpg',
                      heading: 'RICE',
                      screen: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CropDetails(appBarHeading: 'RICE', url: 'https://extension.usu.edu/preserve-the-harvest/images/white-rice.jpg',);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CropWidget(
                      screen: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return CropDetails(appBarHeading: 'JUTE', url: 'https://previews.123rf.com/images/sudip24/sudip241905/sudip24190500025/125801846-jute-cultivation-in-india-conditions-method-production-and-distribution-next-to-cotton-jute-is-the-s.jpg',);
                            },
                          ),
                        );
                      },
                      heading: 'JUTE',
                      image:
                          'https://previews.123rf.com/images/sudip24/sudip241905/sudip24190500025/125801846-jute-cultivation-in-india-conditions-method-production-and-distribution-next-to-cotton-jute-is-the-s.jpg',
                    ),
                    CropWidget(
                      image:
                          'https://static.fibre2fashion.com/Newsresource/images/270/shutterstock-281842232_281960.jpg',
                      heading: 'COTTON',
                      screen: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CropDetails(appBarHeading: 'COTTON', url: 'https://static.fibre2fashion.com/Newsresource/images/270/shutterstock-281842232_281960.jpg',);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CropWidget(
                      screen: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return CropDetails(appBarHeading: 'CORN', url: 'https://i.ibb.co/WvjnhWv/corn-crop-Crop-Tour.jpg',);
                            },
                          ),
                        );
                      },
                      heading: 'CORN',
                      image:
                          'https://i.ibb.co/WvjnhWv/corn-crop-Crop-Tour.jpg',
                    ),
                    CropWidget(
                      image:
                          'https://www.agrifarming.in/wp-content/uploads/2015/06/Bamboo-Farming.jpg',
                      heading: 'BAMBOO',
                      screen: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CropDetails(appBarHeading: 'BAMBOO', url: 'https://www.agrifarming.in/wp-content/uploads/2015/06/Bamboo-Farming.jpg',);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
