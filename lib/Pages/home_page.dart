import 'package:flutter/material.dart';
import 'package:frontend_part_2/Pages/conversation_branch_page.dart';
import 'package:frontend_part_2/style/colour.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String,dynamic>> gridItem = [
    {
      "color" : AppColors.green_5,
      "image" : "Assets/ai_chatbot_icon.png",
      "title" : "Conversation Branch",
      "page"  : const ConversationBranchPage(),
    },
    {
      "color" : AppColors.green_4,
      "image" : "Assets/voice_practice_icon.png",
      "title" : "Voice Practice Branch"
    }
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //gives total height of device
    return Scaffold(
      body: Stack(
        children: <Widget>[Container(
          height: size.height * .45,
          decoration: BoxDecoration(
            color: AppColors.green_2,
            )
          ),
          SafeArea(
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 5),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children:[
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: AppColors.green_3,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.account_circle_outlined,
                          size: 50,
                          color: AppColors.textMain,
                        ),
                      ),
                    ),
                    Text(
                        "Welcome",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: AppColors.textMain,
                      )
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [AppColors.green_1, AppColors.green_3]
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(80),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(10, 10),
                            blurRadius: 10,
                            color: AppColors.green_1,
                          )
                        ]
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dive Into \nYour Daily Ice Breaker \nSession",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: AppColors.background,
                              ),
                            ),
                            SizedBox(height: 2,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.play_circle_outline_rounded,
                                  color: AppColors.textMain,
                                  size: 50,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Expanded(
                      child: GridView.builder(
                        itemCount: gridItem.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: .75
                          ),
                        itemBuilder: (context,index){
                          final item = gridItem[index];
                          return GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => item["page"]
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: item["color"],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    item["image"],
                                    width: 150,
                                    height: 145,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                    item["title"],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 25,
                                      color: AppColors.background
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );

                        },
                      ),
                    )
                  ],
                ),
              )
          )
        ]
      ),
    );
  }
}
