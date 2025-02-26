import 'package:flutter/material.dart';
import '../style/colour.dart';
import 'package:frontend_part_2/style/progress_chart.dart';


class ProgressTrackingPage extends StatefulWidget {
  const ProgressTrackingPage({super.key});

  @override
  State<ProgressTrackingPage> createState() => _ProgressTrackingPageState();
}

class _ProgressTrackingPageState extends State<ProgressTrackingPage> {
  List<double> progressData = [40,50,70,30,85,60,90];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text(
         "Weekly progress"
       ),
     ),
     body: Column(
       children: [
         SizedBox(height: 20,),
         Text(
           "Your Weekly Progress",
           style: TextStyle(
             fontSize: 18,
             fontWeight: FontWeight.bold,
           ),
         ),
         ProgressChart(
           progressData: progressData,
         ),
         SizedBox(height: 20,),
         Text(
           "Average : ${(progressData.reduce((a,b) => a + b)/progressData.length).toStringAsFixed(1)}%",
           style: TextStyle(
             fontSize: 16,
           ),
         ),
       ],
     ),
   );
  }
}
