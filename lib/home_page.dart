import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";



// class HomePage extends StatelessWidget {
  
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           child: Text(  
//             "Button",
//           ),
//           onPressed: () {},
//         ),
        
//      ),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({super.key});
   
  
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 final scrollController = ScrollController();
  
 int length = 100;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        actions: [
          Row (
           children: [
            Text("Hello"),
          ElevatedButton(
            onPressed: (){}, 
            child:Text("Button")
          ),
           ],
          ),
        ],
        title: Text("M smart"),
        centerTitle: true,
        leading: ElevatedButton(
          onPressed: (){},
          child: Text("<"),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("+"),
      ),
      persistentFooterButtons: [
        Text("Button")
      ],
      
      body: Align(
        alignment: Alignment.center,
        child:Scrollbar(
          controller: ScrollController(),
          child: ListView(
          children:List.generate(
              length,
              (i) =>
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              color: Colors.amberAccent,
              width: 100,
              height:100,
              child: Center(
                child:Text(
                  (i+1).toString(),
                  style:TextStyle(fontSize:24),
                ),
              ),
              ),
            ),
            ),                       
          ),
        ),       
    );
  }
}