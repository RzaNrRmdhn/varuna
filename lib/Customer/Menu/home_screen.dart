import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:varuna/Customer/Models/special_offer_models.dart';
import 'Components/grid_product.dart';
import 'Components/list_categories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/img/Pic in.png'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.search),
                                onPressed: (){},
                              ),
                              IconButton(
                                icon: const Icon(Icons.notifications_outlined),
                                onPressed: (){},
                              ),
                              IconButton(
                                icon: const Icon(Icons.favorite_outline),
                                onPressed: (){},
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Special Offer',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          TextButton(
                            onPressed: null,
                            child: Text(
                              'See All',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                      _carouselSlide(),
                      const ListCategories(),
                      const SizedBox(height: 30.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Menu Popular',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          TextButton(
                            onPressed: null,
                            child: Text(
                              'See All',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      // ? Grid View
                      const GridProduct()
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 10.0,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/HomeScreen');
                      },
                      icon: const Icon(Icons.home, color: Colors.black, size: 32),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Profile');
                      },
                      icon: const Icon(Icons.person_2_outlined, color: Colors.black, size: 32),
                    ),
                  ],
                ),
              )
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home, color: Colors.black),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_outline, color: Colors.black),
      //       label: '',
      //     ),
      //   ]
      // ),
    );
  }

  // ? Carousel Slider
  Container _carouselSlide() {
    return Container(
      width: double.infinity,
      height: 175.0, 
      margin: const EdgeInsets.only(bottom: 20),
      child: Stack(
        children: [
          InkWell(
            onTap: (){},
            child: CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 2,
                viewportFraction: 1,
                onPageChanged: ((index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                })
              ),
              items: specialOffer.isNotEmpty ? specialOffer.map((item) => Container(
                width: double.infinity,
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage('${item.image}'),
                    // fit: BoxFit.cover,
                  )
                ),
              )).toList() : [],
            ),
          ),
          Positioned(
            bottom: 10.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: specialOffer.map((item) {
                int index = specialOffer.indexOf(item);
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: const EdgeInsets.symmetric(horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == index ? Colors.black : Colors.grey,
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}