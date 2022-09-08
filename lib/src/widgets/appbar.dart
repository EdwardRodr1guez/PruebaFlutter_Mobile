import 'package:flutter/material.dart';
import 'package:newsprovider/src/theme/lighttheme.dart';

final appbar= AppBar(
            backgroundColor: LightTheme.colorScheme.secondary,
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Text("Categorías"),
            bottom: TabBar(isScrollable: true,tabs: 
            [Tab(icon:Icon(Icons.business_center           ),text: "Business" ),
             Tab(icon:Icon(Icons.tv_outlined               ),text: "Entertainment",),
             Tab(icon:Icon(Icons.assignment_ind            ),text: "General"),
             Tab(icon:Icon(Icons.monitor_heart_outlined    ),text: "Health"),
             Tab(icon:Icon(Icons.science_outlined          ),text: "Science"),
             Tab(icon:Icon(Icons.sports_volleyball_outlined),text: "Sports"),
             Tab(icon:Icon(Icons.newspaper_outlined        ),text: "Techbology"),
            ] 
            
            ) ); 


           
/*
AppBar(
            backgroundColor: LightTheme.colorScheme.secondary,
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Text("Categorías"),
            bottom:  PreferredSize(
              preferredSize: Size(600, 10),
              child: Container(
                width: 800,
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 20, height:20,child: Tab(icon:Icon(Icons.business_center           ),text: "Business" )),
             SizedBox(width: 120, height:20, child: Tab(icon:Icon(Icons.tv_outlined               ),text: "Entertainment",)),
             SizedBox(width: 120,height:20,child: Tab(icon:Icon(Icons.assignment_ind            ),text: "General")),
             SizedBox(width: 120,height:20,child: Tab(icon:Icon(Icons.monitor_heart_outlined    ),text: "Health")),
             SizedBox(width: 120,height:20,child: Tab(icon:Icon(Icons.science_outlined          ),text: "Science")),
             SizedBox(width: 120,height:20,child: Tab(icon:Icon(Icons.sports_volleyball_outlined),text: "Sports")),
             SizedBox(width: 120,height:20,child: Tab(icon:Icon(Icons.newspaper_outlined        ),text: "Techbology")),
          
                ]),
              ) ,
              ),
            
            
            );  

*/


/*
AppBar(
            backgroundColor: LightTheme.colorScheme.secondary,
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Text("Categorías"),
            bottom:  PreferredSize(
              preferredSize: Size(600, 10),
              child: Container(
                width: 800,
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [ TabBar(tabs:[
                    SizedBox(width: 20, height:20,child: Tab(icon:Icon(Icons.business_center           ),text: "Business" )),
             SizedBox(width: 120, height:20, child: Tab(icon:Icon(Icons.tv_outlined               ),text: "Entertainment",)),
             SizedBox(width: 120,height:20,child: Tab(icon:Icon(Icons.assignment_ind            ),text: "General")),
             SizedBox(width: 120,height:20,child: Tab(icon:Icon(Icons.monitor_heart_outlined    ),text: "Health")),
             SizedBox(width: 120,height:20,child: Tab(icon:Icon(Icons.science_outlined          ),text: "Science")),
             SizedBox(width: 120,height:20,child: Tab(icon:Icon(Icons.sports_volleyball_outlined),text: "Sports")),
             SizedBox(width: 120,height:20,child: Tab(icon:Icon(Icons.newspaper_outlined        ),text: "Techbology")),
          
              ],)]),
              ) ,
              ),
            
            
            );  */




/*AppBar(
            backgroundColor: LightTheme.colorScheme.secondary,
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(onPressed: (){}, icon:Icon(Icons.business_center,),),
                IconButton(onPressed: (){}, icon:Icon(Icons.tv_outlined)),
                IconButton(onPressed: (){}, icon:Icon(Icons.assignment_ind)),
                IconButton(onPressed: (){}, icon:Icon(Icons.monitor_heart_outlined)),
                IconButton(onPressed: (){}, icon:Icon(Icons.science_outlined)),
                IconButton(onPressed: (){}, icon:Icon(Icons.sports_volleyball_outlined)),
                IconButton(onPressed: (){}, icon:Icon(Icons.newspaper_outlined)),
                
              ],
            )); */