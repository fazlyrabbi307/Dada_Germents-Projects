import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List gird = [
    {
      "name": "Women's 2",
      "itemsCount": "380 Items"
    },
    {
      "name": "Women's",
      "itemsCount": "140 Items"
    },
    {
      "name": "Party Abaya",
      "itemsCount": "380 Items"
    },
    {
      "name": "Embroidery Abaya",
      "itemsCount": "140 Items"
    }
  ];
int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset("assets/Back Menu.png", height: 22, width: 22),
          onPressed: () {},
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(),
        ),
        centerTitle: true,
        title: Text(
          "Categories",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              "assets/Category Cart Image.png",
              height: 28,
              width: 28,
            ),
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
          ),
        ],
      ),
      body: Column(
        children: [
          //Search Bar
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
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 1.8
              ),
              itemBuilder:(context,index)=>Container(
                decoration: BoxDecoration(
                  color: Color(0xffFFF9F4),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      offset: Offset(-1, 1),
                      blurRadius: 10,
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${gird[index]["name"]}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff424242)),),
                    Text("${gird[index]["itemsCount"]}",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color: Color(0xff424242)),)
                  ],
                ),
              )
            ),
          ),
        ],
      ),
      bottomNavigationBar: // চারপাশে margin
         ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)), // Rounded corners
          child: BottomNavigationBar(
            backgroundColor: Color(0xffFFEFE4), // পিচ কালার
            currentIndex: currentIndex,
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
