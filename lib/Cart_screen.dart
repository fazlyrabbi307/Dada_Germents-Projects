import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

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
          "Cart",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 8),
              child: Container(
                height: 110,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xfffff9f4),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff0000000A).withOpacity(0.2),
                      offset: Offset(3, 4),
                      blurRadius: 4
                    ),
                    BoxShadow(
                        color: Color(0xff0000000A).withOpacity(0.2),
                        offset: Offset(-3, 1),
                        blurRadius: 4
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    spacing: 7,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 90,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/Home cart Abeya1.png"),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Party Borkha Abaya Koliza",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Text('Size : 40', style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black45,
                            ),),
                            Row(
                              children: [
                                Text('BDT 2880 ', style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),),
                                Text('BDT 3200', style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough
                                ),),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Color(0xffF4A758),
                                child: Icon(Icons.add),
                              ),
                              Text('2', style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Color(0xffF4A758),
                                child: Icon(Icons.remove),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 8),
              child: Container(
                height: 110,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xfffff9f4),
                  borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff0000000A).withOpacity(0.2),
                          offset: Offset(3, 4),
                          blurRadius: 4
                      ),
                      BoxShadow(
                          color: Color(0xff0000000A).withOpacity(0.2),
                          offset: Offset(-3, 1),
                          blurRadius: 4
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    spacing: 7,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 90,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/Home cart Abeya2.png"),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Party Borkha Abaya Koliza",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Text('Size : 40', style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black45,
                            ),),
                            Row(
                              children: [
                                Text('BDT 2880 ', style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),),
                                Text('BDT 3200', style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough
                                ),),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Color(0xffF4A758),
                                child: Icon(Icons.add),
                              ),
                              Text('2', style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Color(0xffF4A758),
                                child: Icon(Icons.remove),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 8),
              child: Container(
                height: 245,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Order Summary', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total', style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff424242),
                          ),),
                          Text('8460', style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff424242),
                          ),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Shipping Cost', style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff424242),
                          ),),
                          Text('80', style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff424242),
                          ),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Delivery Location', style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff424242),
                          ),),
                          Text('Inside Dhaka', style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff424242),
                          ),),
                        ],
                      ),
                      Divider(
                        height: 2,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total', style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),),
                          Text('8540', style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17,),
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffF4A758),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text('Checkout', style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                              ),),
                ),
              ),
            )
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
