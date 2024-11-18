import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    List<Map<String,String>> products=[
      {
        'image':'images/Bitmap (2).png',
        'name':'Girls Stylish\nDress...',
        'original_price':'79.00',
        'offer_price':'100'
      },
      {
        'image':'images/Bitmap (1).png',
        'name':'Man Stylish Dress...',
        'original_price':'70.00',
        'offer_price':'250'
      },
      {
        'image':'images/Bitmap.png',
        'name':'Man Stylish Dress...',
        'original_price':'96.00',
        'offer_price':'200'
      },
      {
        'image':'images/Bitmap (3).png',
        'name':'Girls Stylish\nDress...',
        'original_price':'160.00',
        'offer_price':'190'
      },
      {
        'image':'images/Bitmap (4).png',
        'name':'Man Stylish Dress..',
        'original_price':'60.00',
        'offer_price':'180'
      },
      {
        'image':'images/Bitmap (5).png',
        'name':'Girls Stylish\nDress..',
        'original_price':'120.00',
        'offer_price':'160'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Products List',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                color: Colors.black,
                size: 30,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * .4 /6,
                width: size.width,
                decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'images/Shape.png',
                            width: 25,
                            height: 25,
                            color: Colors.black.withOpacity(.4),
                          ),
                          const SizedBox(width: 10,),
                          const Text('Filter',style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                      const Row(
                        children: [
                          Text('Sort by',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black54
                          ),),
                          SizedBox(width: 5,),
                          Icon(Icons.keyboard_arrow_down,size: 26,),
                          SizedBox(width: 10,),
                          Icon(Icons.menu_open_outlined)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              GridView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                  childAspectRatio: .5
              ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Column(
                        children: [
                          Image.asset(products [index]['image']??'No Image',),
                          const SizedBox(height: 10,),
                          Text(products[index]['name']?? 'No Name',style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),),
                          const SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('\$${products[index]['offer_price']}',style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black54,
                                decoration: TextDecoration.lineThrough
                              ),),
                              const SizedBox(width: 8,),
                              Text('\$${products[index]['original_price']}',style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black,
                              ),),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.grey,),
                            ],
                          )
                        ],
                      ),
                    );
                  },)
            ],
          ),
        ),
      ),
    );
  }
}
