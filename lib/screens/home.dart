import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		return Material(
				child: Container(
					padding: EdgeInsets.all(24.0),
					color: Color(0xfffe9eaf1),
					child: Column(
							mainAxisAlignment: MainAxisAlignment.spaceEvenly,
							crossAxisAlignment: CrossAxisAlignment.center,
							children: <Widget>[
								SizedBox(height: 10.0),
								Text(
									"Discover thousands of books",
									style: TextStyle(
										color: Color(0xff111415),
										fontSize: 35.0,
										fontWeight: FontWeight.bold,
									),
								),

								SvgPicture.asset(
									"assets/homecover.svg",
									height: 300.0,
								),

								Text(
									"Join our monthly subscription and enjoy a variety of features, which includes four daily recommandations based on your favorite book categories",
									style: TextStyle(
										color: Color(0xff6e7e89),
										fontSize: 17.0,
									),
								),

								SizedBox(height: 10.0),

								GestureDetector(
								onTap: (){
									print("Subscription Clicked");
								},
								child: Container(
									width: MediaQuery.of(context).size.width,
									padding: EdgeInsets.symmetric(vertical: 8.0),
									decoration: BoxDecoration(
										boxShadow: [
											BoxShadow(
											color: Colors.grey.withOpacity(0.8),
											spreadRadius: 3,
											blurRadius: 25.0,
											offset: Offset(0.0, 0.75),
										),
										],
										color: Color(0xff0076be),
										borderRadius: BorderRadius.circular(30.0),
									),
									child: Center(
											child: Text(
										"Subscribe Now - \$3.99",
										style: TextStyle(
											fontSize: 24.0,
											color: Colors.white,
										),
									),
											),
								),
								),

								SizedBox(height: 10.0),
								
								GestureDetector(
								onTap: (){
									print("Decide later");
								},
								child: Center(
									child: Text(
										"I'll decide later",
										style: TextStyle(
											fontSize: 17.0,
											color: Color(0xff6e7e89),
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
