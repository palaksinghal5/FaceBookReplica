import 'package:flutter/material.dart';
import 'package:flutterreplicaui/models/user_model.dart';

class Rooms extends StatelessWidget {

  final List<User> onlineUsers;

  const Rooms({
    Key key, 
    @required this.onlineUsers
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.orange,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0, 
          horizontal: 4.0,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + onlineUsers.length,
        itemBuilder: (BuildContext context, int index){
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0,),
              child: _createRoomButton(),
            );
          }
          return Container(
            margin: const EdgeInsets.all(2.0),
            height: 20.0,
            width: 20.0,
            color: Colors.red,
          );
        },
      ),
    );
  }
}

class _createRoomButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => print('Create Room'),
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(color: Colors.blueAccent[100], width: 3.0),
        
          )
        ),
      )
    );
  }
}