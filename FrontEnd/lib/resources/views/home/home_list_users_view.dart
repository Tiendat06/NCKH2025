import 'package:flutter/material.dart';
import '../../../app/models/user_model.dart';
import 'package:frontend/shared/constants/styles.dart';

Widget getUserListView(context, snapshot) {
  if(snapshot.connectionState == ConnectionState.waiting){
    return const Center(child: CircularProgressIndicator());
  } else if (snapshot.hasError){
    return Center(child: Text('Error occurred: ${snapshot.error}'));
  } else if(!snapshot.hasData || snapshot.data!.isEmpty) {
    return const Center(child: Text('Không có người dùng nào'));
  } else{
    List<UserModel> users = snapshot.data!;
    return ListView.builder(
        shrinkWrap: true,
        itemCount: users.length,
        itemBuilder: (context, index) {
          UserModel user = users[index];
          return ListTile(
            title: Text(user.name, style: AppTextStyles.boldPrimary20,),
            subtitle: Text(user.email, style: AppTextStyles.bold12,),
            trailing: PopupMenuButton(
              onSelected: (value) {
                if (value == 'edit') {
                  print('edit user');
                } else if (value == 'delete') {
                  print('delete user');
                }
              },
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem<String>(
                    value: 'edit',
                    child: Text('Edit'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'delete',
                    child: Text('Delete'),
                  ),
                ];
              },
              icon: Icon(Icons.more_vert),
            ),
          );
        }
    );
  }
}