import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


void main() => runApp(MaterialApp(
  home: NewsApp()
));


class NewsApp extends StatefulWidget {
  @override
  _NewsAppState createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'News App',
          style: TextStyle(
            color: Colors.redAccent,
            fontFamily: 'font',
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
         ),
       ),
      ),

      // Bottom Bar

      bottomNavigationBar: BottomAppBar(
        elevation: 2.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.home, size: 35.0,),
              color: Colors.grey,
            ),
            
             IconButton(
              onPressed: (){},
              icon: Icon(Icons.search, size: 35.0,),
              color: Colors.grey,
            ),

             IconButton(
              onPressed: (){},
              icon: Icon(Icons.bookmark, size: 35.0,),
              color: Colors.grey,
            ),

             IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications, size: 35.0,),
              color: Colors.grey,
            ),
             IconButton(
              onPressed: (){},
              icon: Icon(Icons.account_circle, size: 35.0,),
              color: Colors.grey,
            ),

          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(8,20,8,8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('FROM OUR PICKS', style: TextStyle(fontWeight: FontWeight.w900, letterSpacing: 1.0, ),),

          SizedBox(height:20),

          new Swiper(
  layout: SwiperLayout.CUSTOM,
  customLayoutOption: new CustomLayoutOption(
      startIndex: -1,
      stateCount: 3
  ).addRotate([
    -45.0/180,
    0.0,
    45.0/180
  ]).addTranslate([
    new Offset(-370.0, -40.0),
    new Offset(0.0, 0.0),
    new Offset(370.0, -40.0)
  ]),
  itemWidth: 300.0,
  itemHeight: 200.0,
  itemBuilder: (context, index) {
    return new Container(
      color: Colors.blueAccent[900],
      child: new Center(
        child: new Image.asset('assets/images.jpg'),
      ),
    );
  },
  itemCount: 10),


              
        // Card(
        //   semanticContainer: true,
        //   clipBehavior: Clip.antiAliasWithSaveLayer,
        //   child: Image.asset(
        //     'assets/images.jpg',
        //     fit: BoxFit.fill,
        //   ),
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(15.0),
        //   ),
        //   elevation: 5,
        //   margin: EdgeInsets.all(10),
        // ),

          SizedBox(height: 30),

//  This is where the problem is coming from 

        Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('LATEST STORIES',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.0, ),),

                Padding(
                  padding: EdgeInsets.only(left:100),
                  child: Text('OLD', style: TextStyle(fontSize: 15.0, letterSpacing: 1.0, ),),
                ),

                SizedBox(width: 10),

                Text('RECENTS', style: TextStyle(fontWeight: FontWeight.w900, letterSpacing: 1.0, ),),

              ],
            ),

          SizedBox(height:30),

        // Swiper(
        //   itemBuilder: (BuildContext context,int index){
        //     return Image.asset("assets/images.jpg",fit: BoxFit.fill,);
        //   },
        //   itemCount: 3,
        //   pagination: SwiperPagination(),
        //   control: SwiperControl(),
        // ),

          Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.asset(
            'assets/images.jpg',
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ),

          ],
          ),
      ),
      
      
    );
  }
}