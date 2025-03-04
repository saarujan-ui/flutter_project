import 'package:flutter/material.dart';

import '../style/colour.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.green_1,AppColors.green_2],
            begin: const FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30, right: 20,left: 20),
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                      color: AppColors.textMain,
                    ),
                    const SizedBox(width: 10,),
                    Text(
                      "Help Center",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: AppColors.textMain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: ListView(
                  children: [
                    ExpansionTile(
                      leading: Icon(
                        Icons.support_agent_rounded,
                        color: AppColors.green_1,
                        size: 30,
                      ),
                      title: Text(
                        "Contacts",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: Text(
                            "Email"
                          ),
                          leading: Icon(
                            Icons.email_rounded,
                            color: AppColors.green_1,
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    ExpansionTile(
                      leading: Icon(
                        Icons.face_6_rounded,
                        color: AppColors.green_1,
                        size: 30,
                      ),
                      title: Text(
                        "Social Media",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: Text(
                            "Instagram",
                          ),
                          leading: Icon(
                            Icons.camera_alt_rounded
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "Youtube",
                          ),
                          leading: Icon(
                            Icons.video_camera_back,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
