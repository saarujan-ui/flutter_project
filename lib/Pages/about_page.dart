import 'package:flutter/material.dart';
import 'package:frontend_part_2/style/colour.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
                      "About Us",
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
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome to Social Ease",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textSub,
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          "At Social Ease we believe that everyone deserves the confidence to express themselves "
                          "clearly and effectively, no matter the situation.Our app is designed for individual who struggle "
                          "with speaking in front of others whether in social settings,professional environments, or even casual conversation "
                          "We specifically focus on introverts and those who find it challenging to articulate their thoughts with confidence "
                          "when given the opportunity",
                          style: TextStyle(
                            fontSize: 15,
                            color: AppColors.textSub,
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          "Our Mission",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textSub,
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          "Our goal is to create a supportive,structured and engaging leaning environment where "
                          "users can develop their speaking skills at their own pace."
                          "We aim to :",
                          style: TextStyle(
                            fontSize: 15,
                            color: AppColors.textSub,
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text(
                          "Help individuals overcome the fear of public speaking.",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textSub
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text(
                          "Provide structured exercises that encourage gradual progress.",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textSub
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text(
                          "Foster self-expression through interactive and immersive activities.",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textSub
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text(
                          "Offer constructive feedback that builds confidence over time.",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textSub
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          "Thank you for using our app",
                          style: TextStyle(
                            fontSize: 15,
                            color: AppColors.textSub
                          ),
                        )
                      ],
                    )
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
