import 'package:flutter/material.dart';
import 'package:frontend/app/controllers/home_controller.dart';
import '../../../app/models/user_model.dart';
import 'package:frontend/shared/constants/styles.dart';

Widget getUserListView(context, snapshot, deleteUser) {
  if(snapshot.connectionState == ConnectionState.waiting){
    return Center(child: CircularProgressIndicator());
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
          return userItems(context, user, deleteUser);
        }
    );
  }
}

Widget userItems(BuildContext context, UserModel user, Future<void> Function(UserModel) deleteUser) {
  return ListTile(
    title: Text(user.name, style: AppTextStyles.boldPrimary20,),
    subtitle: Text('${user.email} - ${user.phone}', style: AppTextStyles.bold12,),
    trailing: PopupMenuButton(
      onSelected: (value) async {
        if (value == 'edit') {
          print('edit user');
        } else if (value == 'delete') {
          return showDialog(
              context: context,
              builder: (BuildContext ctx) => alertDialog(ctx, user, deleteUser)
          );
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
      icon: const Icon(Icons.more_vert),
    ),
  );
}

Widget alertDialog(BuildContext context, UserModel user, Future<void> Function(UserModel) deleteUser){
  return AlertDialog(
    title: const Text('Delete User'),
    content: Text('Do you want to delete user "${user.name}"?'),
    actions: <Widget>[
      TextButton(
        onPressed: () => Navigator.pop(context, 'Cancel'),
        child: const Text('Cancel'),
      ),
      TextButton(
        onPressed: () async {
          await deleteUser(user);
          Navigator.pop(context, 'OK');
        },
        child: const Text('OK'),
      ),
    ],
  );
}