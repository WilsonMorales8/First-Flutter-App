import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: const Text('Timer',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(
            Icons.monetization_on,
            size: 35,
            color: Colors.black,
          )
        ],
      ),
      body: const Center(child: Text('Timer Page(Incomplete)')),
    );
  }

  // //Variables
  // int _seconds = 60; // Initial countdown time in seconds
  // Timer? _timer;
  //
  // //Methods
  // void _startTimer() {
  //   if (_timer != null) {
  //     _timer!.cancel();
  //   }
  //   _timer = Timer.periodic(Duration(seconds: 1), (timer) {
  //     setState(() {
  //       if (_seconds > 0) {
  //         _seconds--;
  //       } else {
  //         _timer!.cancel();
  //       }
  //     });
  //   });
  // }
  //
  // void _stopTimer() {
  //   if (_timer != null) {
  //     _timer!.cancel();
  //   }
  // }
  //
  // void _resetTimer() {
  //   _stopTimer();
  //   setState(() {
  //     _seconds = 60; // Reset to initial time
  //   });
  // }
  //
  // @override
  // void dispose() {
  //   _timer?.cancel();
  //   super.dispose();
  // }
  //
  // //UI
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Timer Clock'),
  //     ),
  //     body: Center(
  //       child: Text(
  //         '$_seconds',
  //         style: TextStyle(fontSize: 48),
  //       ),
  //     ),
  //     floatingActionButton: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //       children: [
  //         FloatingActionButton(
  //           onPressed: _startTimer,
  //           child: Icon(Icons.play_arrow),
  //         ),
  //         FloatingActionButton(
  //           onPressed: _stopTimer,
  //           child: Icon(Icons.pause),
  //         ),
  //         FloatingActionButton(
  //           onPressed: _resetTimer,
  //           child: Icon(Icons.replay),
  //         ),
  //       ],
  //     ),
  //   );
  // }

//-------------------------------------------------------------------------------------------

//   import 'package:http/http.dart' as http;
// //convert json string to map of type string, dynamic
//   import 'dart:convert' as convert;
//
//
// //FUTURE-------------------------------------------------------------
//   void main() {
//
//     //when fetch completes, 'then' will run. then(callback function)
//     fetchPost().then((post) {
//       print(post.title);
//       print(post.userId);
//     });
//   }
//
// //we are simulating a network request //Asynchronous action, takes some time
// // its going to be uncompleted until 3 sec pass
//   Future<Post> fetchPost() {
//     //Delay amount (Duration class)
//     const delay = Duration(seconds: 3);
//
//     //return something with that delay
//     return Future.delayed(delay, () {
//       return Post('caca', 20);
//     });
//   }
//
//
// //AWAIT with ASYNC-------------------------------------------------------
//   void main2() async {
//
//     //Waits for fetch to happen before assigning value (makes post not be future)
//     final post = await fetchPost();
//     print(post.title);
//     print(post.userId);
//
//   }
//
//   Future<Post> fetchPost2() {
//     //Delay amount (Duration class)
//     const delay = Duration(seconds: 3);
//
//     //return something with that delay
//     return Future.delayed(delay, () {
//       return Post('caca', 20);
//     });
//   }
//
//
// //FETCHING DATA ( HTTP )---------------------------------------------------
//   void main3() async {
//
//     final post = await fetchPost();
//
//     print(post.title);
//     print(post.userId);
//
//   }
//
//   Future<Post> fetchPost3() async{
//
//     //https package use
//     //jsonplaceholder.typicode.com/posts/1
//     var url = Uri.https('jsonplaceholder.typicode.com', '/posts/2');
//
//     final response = await http.get(url);
//
//     Map<String, dynamic> data = convert.jsonDecode(response.body);
//
//     return Post(data["title"], data["userId"]);
//   }
//
//
// //Post class--------------------------------------------------------------
//   class Post {
//   String title;
//   int userId;
//
//   Post(this.title, this.userId);
//   }

}
