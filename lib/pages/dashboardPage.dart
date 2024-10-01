import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return dashboardPageState();
  }
}

class dashboardPageState extends State<DashboardPage> {
  horizontalscrollitem(var size, int color){
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Container(
            height: size.height/5,
            width: size.width/1.5,
            decoration: BoxDecoration(
              color: Color(color),
              borderRadius: BorderRadius.circular(15),

            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network("https://images.pexels.com/photos/3970330/pexels-photo-3970330.jpeg?auto=compress&cs=tinysrgb&w=600", fit: BoxFit.cover,)
              // child: Image.asset("images/flutterImage.jpg", fit: BoxFit.cover,)
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 15,
          child: Container(
            width: size.width/2,
            child: Text("Today's news update on September 2024", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                fontSize: 20), overflow: TextOverflow.ellipsis, maxLines: 2,),

          ),
        ),
        Positioned(
          bottom: 8,
          left: 15,
          child: Container(
            width: size.width/2,
            child: Text("23rd Sept 2024", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                fontSize: 20), overflow: TextOverflow.ellipsis, maxLines: 1,),

          ),
        ),
      ],

    );
  }
  static Widget verticalscrollitem(var size, int color) {

    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: size.height / 5,
        width: size.width / 1.2,
        margin: EdgeInsets.only(left: 2),
        decoration: BoxDecoration(
          color: Color(color),
          borderRadius: BorderRadius.circular(15),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Row(
            children: [
              // Image on the left
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  "https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg",
                  height: size.height / 5,
                  width: size.width / 3.5,  // Control image width
                  fit: BoxFit.cover,
                ),
              ),

              // Text and buttons on the right
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Sample text
                      Text(
                        "Vacation",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "This is a short description of the item displayed here.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 16),

                      // Buttons row
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {

                            },
                            child: Text("hello"),
                          ),
                          SizedBox(width: 8),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("World"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       horizontalscrollitem(size, 0xfffff555),
            //       SizedBox(width: 10,),
            //       horizontalscrollitem(size, 0xff009688),
            //       SizedBox(width: 10,),
            //       horizontalscrollitem(size, 0xfffff555),
            //       SizedBox(width: 10,),
            //       horizontalscrollitem(size, 0xfff45555),
            //       SizedBox(width: 10,),
            //       horizontalscrollitem(size, 0xfffff555),
            //     ],
            //   ),
            // ),
            Container(
              width: size.width,
              height: size.height/5,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 100,
                itemBuilder: (context, index){
                  return horizontalscrollitem(size, 0xfff22555);
                },),
            ),
            SizedBox(height: 10,),
            Container(
              height: size.height/1.5,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    verticalscrollitem(size, 0xfffff555),
                    SizedBox(height: 10,),
                    verticalscrollitem(size, 0xff004d40),
                    SizedBox(height: 10,),
                    verticalscrollitem(size, 0xfffff555),
                    SizedBox(height: 10,),
                    verticalscrollitem(size, 0xfff44655),
                    SizedBox(height: 10,),
                    verticalscrollitem(size, 0xfff12555),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}