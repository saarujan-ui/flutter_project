import 'package:flutter/material.dart';
import '../style/colour.dart';

class ProgressTrackingPage extends StatefulWidget {
  const ProgressTrackingPage({super.key});

  @override
  State<ProgressTrackingPage> createState() => _ProgressTrackingPageState();
}

class _ProgressTrackingPageState extends State<ProgressTrackingPage> {
  List<Map<String,dynamic>> dailyProgress = [];
  List<int> weeklyProgress = [];

  //connecting backend code mostly
  // @override
  // void initState() {
  //   super.initState();
  //   fetchProgressData(); // Fetch data when the screen loads
  // }
  //
  // Future<void> fetchProgressData() async {
  //   try {
  //     // Placeholder API URL (Replace with actual backend URL)
  //     final response = await http.get(Uri.parse("https://your-backend.com/progress"));
  //
  //     if (response.statusCode == 200) {
  //       final data = json.decode(response.body);
  //
  //       setState(() {
  //         dailyProgress = List<Map<String, dynamic>>.from(data['daily']);
  //         weeklyProgress = List<int>.from(data['weekly']);
  //       });
  //     } else {
  //       throw Exception("Failed to load progress data");
  //     }
  //   } catch (error) {
  //     print("Error fetching data: $error");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Future.delayed(Duration(seconds: 2)),
        builder: (context, snapshot){
          if (snapshot.connectionState == ConnectionState.waiting){
            return Center(child:CircularProgressIndicator()
            );
          }
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Daily Progress",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10,),
                //dailyProgress.map((data = > buildProgressCard(data["day"],data["Progress"]))).toList(),
                Divider(),
                Text(
                "Weekly Progress",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  ),
                ),
                SizedBox(height: 10,),
                //Expanded (
                //child: buildweeklyChart(),
               // )
              ],
            ),
          );
        }
      ),
    );
  }
}
