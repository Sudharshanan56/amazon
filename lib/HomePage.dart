import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Amazonhomepage extends StatefulWidget {
  const Amazonhomepage({super.key});

  @override
  State<Amazonhomepage> createState() => _AmazonhomepageState();
}

class _AmazonhomepageState extends State<Amazonhomepage> {
  List img=[
    "Assets/phone.jpg",
    "Assets/tv.jpg",
    "Assets/airbuds.jpg",
    "Assets/phone.jpg",
    "Assets/tv.jpg",
    "Assets/airbuds.jpg",
  ];
  List text=[
    "Mobiles",
    "TV",
    "Ear Phones",
    "Mobiles",
    "TV",
    "Ear Phones",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.blue.shade200,
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            height: 50,
            width: 380,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: TextFormField(

              decoration: InputDecoration(

                  prefixIcon: Icon(Icons.search,size: 40,),
                  hintText: "Search Amazon.in",
                  hintStyle: TextStyle(fontSize: 20,color: Colors.black54),
                  suffixIcon: Icon(Icons.qr_code_scanner)
              ),


            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //location and delivery city with pincode
            Row(
              children: [
                SizedBox(height: 10,),
                Container(
                  height: 60,
                  width: 412,
                  color: Colors.blue.shade100,
                  child: Row(
                    children: [
                      // Icon(Icons.location_on_outlined,size: 40,),
                      Expanded(
                        child: ListTile(
                          leading: Icon(Icons.location_on_outlined,size: 30,),
                          title: Text("Delivering to Madurai 625016"),
                          trailing: Icon(Icons.keyboard_arrow_down),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),

            //ListView
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 120,
                width: 412,
                color: Colors.white,

                child: ListView.builder(
                    itemCount: img.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context,int index){
                      return Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(img[index]),
                                )
                            ),
                          ),
                          Text(text[index],style: TextStyle(color: Colors.black),),
                        ],
                      );

                    }
                ),
              ),
            ),
            //carousal slider
            Container(
              height: 200,
              width: 412,
              child: CarouselSlider.builder(itemCount: img.length,
                options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  scrollDirection: Axis.horizontal,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 1,


                ), itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Container(
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(img[index]),
                        )
                    ),
                  );
                },
              ),
            ),

            Container(
              height: 600,
              child: GridView.builder(
                itemCount:img.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (BuildContext context,int index)
                {
                  return Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(img[index]),fit: BoxFit.fill,
                            )
                        ),
                      ),
                    ],
                  );
                },
              ),

            )






          ],
        ),
      ),
    );
  }
}