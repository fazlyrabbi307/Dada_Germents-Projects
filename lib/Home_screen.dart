import 'package:flutter/material.dart';

import 'category_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final pages = [ HomeScreen(),CategoryScreen()];

  List abeyaBurka = [
    {"name": "Women's 2", "image": "assets/Home Categori image.png"},
    {"name": "Women’s", "image": "assets/Home Categori image.png"},
    {"name": "Party Abaya", "image": "assets/Home Categori image.png"},
    {"name": "Embroidery Abaya", "image": "assets/Home Categori image.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset("assets/Menu icon.png", height: 28, width: 28),
          onPressed: () {},
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(),
        ),
        centerTitle: true,
        title: Container(
          height: 35,
          width: 120,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/Only Dada.png"),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              "assets/User Profile Icon.png",
              height: 28,
              width: 28,
            ),
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                          prefixIcon: Icon(Icons.search_outlined),
                          labelText: "Search Products",labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xffC7C7C7),),
                          border: OutlineInputBorder(
                            borderSide:BorderSide(
                                color: Colors.grey
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.grey)
                          )
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 45,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffF4A758),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.tune_outlined),
                  ),
                ],
              ),
            ),
            // Benanr
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Container(
                height: 147,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/slaider image.png"),
                  ),
                ),
              ),
            ),
            // Catagoris
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 15),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff5F5F5F),
                ),
              ),
            ),
            // Catagoris abeya Womens list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
              child: SizedBox(
                height: 109,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: abeyaBurka.length,
                  itemBuilder: (context, index) => Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        height: 109,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("${abeyaBurka[index]["image"]}"),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 60,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          child: Container(
                            height: 18,
                            width: 90,
                            color: Colors.black38,
                            child: Center(
                              child: Text(
                                "${abeyaBurka[index]["name"]}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Best Selling Aeya Catagoris
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Selling",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff5F5F5F),
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFF8900),
                    ),
                  ),
                ],
              ),
            ),

            // Best Selling Aeya
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: Container(
                height: 267,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 261,
                      width: 175,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12,width: 0.5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                offset: Offset(-1, 5),
                                blurRadius: 4
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    "assets/Home cart Abeya1.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Party Borkha Abaya Koliza",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8),
                                  child: Row(
                                    spacing: 7,
                                    children: [
                                      Text(
                                        "2880",
                                        style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        "3200",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            decoration: TextDecoration.lineThrough,
                                            color: Colors.grey
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Center(
                                    child: Container(
                                      height: 30,
                                      width: 88,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(color: Colors.grey,width: 0.5)
                                      ),
                                      child: Center(child: Text("Add To Cart",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Colors.black),)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 261,
                      width: 175,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12,width: 0.5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                offset: Offset(-1, 5),
                                blurRadius: 4
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    "assets/Home cart Abeya2.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Party Borkha Abaya Koliza",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8),
                                  child: Row(
                                    spacing: 7,
                                    children: [
                                      Text(
                                        "2880",
                                        style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        "3200",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            decoration: TextDecoration.lineThrough,
                                            color: Colors.grey
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Center(
                                    child: Container(
                                      height: 30,
                                      width: 88,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(color: Colors.grey,width: 0.5)
                                      ),
                                      child: Center(child: Text("Add To Cart",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Colors.black),)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // New Arrival Aeya Catagoris
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Arrival",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff5F5F5F),
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFF8900),
                    ),
                  ),
                ],
              ),
            ),

            // New Arrival Aeya
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: Container(
                height: 267,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 261,
                      width: 175,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12,width: 0.5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                offset: Offset(-1, 5),
                                blurRadius: 4
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    "assets/Home cart Abeya1.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Party Borkha Abaya Koliza",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8),
                                  child: Row(
                                    spacing: 7,
                                    children: [
                                      Text(
                                        "2880",
                                        style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        "3200",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            decoration: TextDecoration.lineThrough,
                                            color: Colors.grey
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Center(
                                    child: Container(
                                      height: 30,
                                      width: 88,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(color: Colors.grey,width: 0.5)
                                      ),
                                      child: Center(child: Text("Add To Cart",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Colors.black),)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 261,
                      width: 175,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12,width: 0.5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                offset: Offset(-1, 5),
                                blurRadius: 4
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    "assets/Home cart Abeya2.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Party Borkha Abaya Koliza",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8),
                                  child: Row(
                                    spacing: 7,
                                    children: [
                                      Text(
                                        "2880",
                                        style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        "3200",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            decoration: TextDecoration.lineThrough,
                                            color: Colors.grey
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Center(
                                    child: Container(
                                      height: 30,
                                      width: 88,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(color: Colors.grey,width: 0.5)
                                      ),
                                      child: Center(child: Text("Add To Cart",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Colors.black),)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Party abeya slaider
            SizedBox(height: 50,),
            // Abeya Plus Bennar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Container(
                height: 422,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xfffdf8f2),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Column(
                  children: [
                    Stack(
                          children: [
                            Container(
                              height: 138,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/Home Party abeya.png")),
                              ),
                            ),
                            Positioned(
                              bottom: 40,
                              left: 140,
                              child: Container(
                                height: 28,
                                width: 120,
                                color: Colors.transparent,
                                child: Text("Party Abaya",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
                              ),),
                            Positioned(
                              bottom: 10,
                              left: 160,
                              child: Container(
                                height: 24,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Color(0xffEDB77BB0),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(child: Text("View All",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),)),
                              ),)
                          ],
                        ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7 ),
                      child: Container(
                        height: 267,
                        width: double.infinity,
                        color: Color(0xfffdf8f2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 261,
                              width: 175,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12,width: 0.5),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.1),
                                        offset: Offset(-1, 5),
                                        blurRadius: 4
                                    )
                                  ]
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                            "assets/Home cart Abeya1.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5,),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Party Borkha Abaya Koliza",
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8),
                                          child: Row(
                                            spacing: 7,
                                            children: [
                                              Text(
                                                "2880",
                                                style: TextStyle(
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                "3200",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    decoration: TextDecoration.lineThrough,
                                                    color: Colors.grey
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: Center(
                                            child: Container(
                                              height: 30,
                                              width: 88,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  border: Border.all(color: Colors.grey,width: 0.5)
                                              ),
                                              child: Center(child: Text("Add To Cart",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Colors.black),)),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 261,
                              width: 175,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12,width: 0.5),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.1),
                                        offset: Offset(-1, 5),
                                        blurRadius: 4
                                    )
                                  ]
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                            "assets/Home cart Abeya2.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5,),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Party Borkha Abaya Koliza",
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8),
                                          child: Row(
                                            spacing: 7,
                                            children: [
                                              Text(
                                                "2880",
                                                style: TextStyle(
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                "3200",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    decoration: TextDecoration.lineThrough,
                                                    color: Colors.grey
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: Center(
                                            child: Container(
                                              height: 30,
                                              width: 88,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  border: Border.all(color: Colors.grey,width: 0.5)
                                              ),
                                              child: Center(child: Text("Add To Cart",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Colors.black),)),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Container(
                height: 422,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xfffdf8f2),
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 138,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/slaider image.png")),
                          ),
                        ),
                        Positioned(
                          bottom: 40,
                          left: 140,
                          child: Container(
                            height: 28,
                            width: 120,
                            color: Colors.transparent,
                            child: Text("Party Abaya",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
                          ),),
                        Positioned(
                          bottom: 10,
                          left: 160,
                          child: Container(
                            height: 24,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Color(0xffEDB77BB0),
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(child: Text("View All",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),)),
                          ),)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7 ),
                      child: Container(
                        height: 267,
                        width: double.infinity,
                        color: Color(0xfffdf8f2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 261,
                              width: 175,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12,width: 0.5),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.1),
                                        offset: Offset(-1, 5),
                                        blurRadius: 4
                                    )
                                  ]
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                            "assets/Home cart Abeya1.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5,),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Party Borkha Abaya Koliza",
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8),
                                          child: Row(
                                            spacing: 7,
                                            children: [
                                              Text(
                                                "2880",
                                                style: TextStyle(
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                "3200",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    decoration: TextDecoration.lineThrough,
                                                    color: Colors.grey
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: Center(
                                            child: Container(
                                              height: 30,
                                              width: 88,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  border: Border.all(color: Colors.grey,width: 0.5)
                                              ),
                                              child: Center(child: Text("Add To Cart",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Colors.black),)),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 261,
                              width: 175,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12,width: 0.5),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.1),
                                        offset: Offset(-1, 5),
                                        blurRadius: 4
                                    )
                                  ]
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                            "assets/Home cart Abeya2.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5,),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Party Borkha Abaya Koliza",
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8),
                                          child: Row(
                                            spacing: 7,
                                            children: [
                                              Text(
                                                "2880",
                                                style: TextStyle(
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                "3200",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    decoration: TextDecoration.lineThrough,
                                                    color: Colors.grey
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: Center(
                                            child: Container(
                                              height: 30,
                                              width: 88,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  border: Border.all(color: Colors.grey,width: 0.5)
                                              ),
                                              child: Center(child: Text("Add To Cart",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Colors.black),)),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
      bottomNavigationBar: // চারপাশে margin
      ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)), // Rounded corners
        child: BottomNavigationBar(
          backgroundColor: Color(0xffFFEFE4),
          currentIndex: currentIndex,// পিচ কালার
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black54,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Wishlist',
            ),
          ],
        ),
      ),
    );
  }
}
