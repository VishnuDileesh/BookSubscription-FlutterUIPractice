import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		return SafeArea(
				child: Container(
					color: Color(0xfffe9eaf1),
					child: Column(
							children: <Widget>[
								Text("Hello"),
							],
					),
				),
		);
	}
}
