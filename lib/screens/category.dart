import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../models/catmodel.dart';


class ChooseCatScreen extends StatelessWidget{
	@override
	Widget build(BuildContext context){

		List<Category> catlist = [
			Category('assets/theater.svg', 'Drama'),
			Category('assets/robot.svg', 'SciFi'),
			Category('assets/biography.svg', 'Biography'),
			Category('assets/noodles.svg', 'Cooking'),
			Category('assets/money.svg', 'Business'),
			Category('assets/pill.svg', 'Health'),
		];

		return Material(
			child: SingleChildScrollView(
			child: Container(
				color: Color(0xffE8E8EE),
				padding: EdgeInsets.all(24.0),
					child: Column(
					crossAxisAlignment: CrossAxisAlignment.center,
					children: <Widget>[

						SizedBox(
							height: 60.0,
						),
						
						Center(
						child: Text(
								"Welcome Alicia, please select your favorite book categories to begin personalizing your experiece.",
								style: TextStyle(
									//color: Color(0xff6e7e89),
									color: Color(0xff88ADB6),
									fontSize: 24.0,
								),
							),
						),

						SizedBox(
							height: 24.0,
						),
						

						Container(
						decoration: BoxDecoration(
							//color: Color(0xffdcdadb),
							color: Color(0xffB2C3D4),
							//color: Color(0xffc7cbcc),
							borderRadius: BorderRadius.circular(30.0),
						),
						child: TextField(
							decoration: InputDecoration(
								hintText: 'Search any category',
								hintStyle: TextStyle(
									color: Color(0xff2D3439),
								),
								prefixIcon: Icon(
										Icons.search,
										color: Color(0xff6e7e89),
								),
								border: InputBorder.none,
							),
						),
						),

					
						GridView.count(
							shrinkWrap: true,
							physics: BouncingScrollPhysics(),
							crossAxisCount: 2,
							childAspectRatio: 1.0,
							crossAxisSpacing: 40,
							mainAxisSpacing: 40,
							children: List.generate(catlist.length, (index){
								return Card(
									color: Color(0xffB2C3D4),
									shape: RoundedRectangleBorder(
										borderRadius: BorderRadius.circular(30.0),
									),
									child: Column(
										mainAxisAlignment: MainAxisAlignment.center,
										children: <Widget>[
											SvgPicture.asset(
													catlist[index].catimage,
													height: 80.0,
											),

											SizedBox(
												height: 20.0,
											),

											Center(
												child: Text(
													catlist[index].catname,
													style: TextStyle(
														color: Color(0xff2D3439),
														fontSize: 16.0,
													),
												),
											),

										],
									),
									
								);
							}),
							),

							SizedBox(height: 20.0),
							
							
						

						
						

					],
					),
				),
				),
		);
	}
}
