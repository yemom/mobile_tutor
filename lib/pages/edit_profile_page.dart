import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/component/app_text_field.dart';
import 'package:myfirst_flutter_project/component/user_avatar.dart';
import 'package:myfirst_flutter_project/config/app_string.dart';
import 'package:myfirst_flutter_project/pages/tool_bar.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: AppString.editProfile, actions: []),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Stack(
              children: [
                padding(
                  const EdgeInsets.all(24.0),
                  child: UserAvatar(size: 120),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    child: Icon(Icons.edit, size: 20, color: Colors.black),
                  ),
                ),
              ],
            ),

            AppTextField(hint: 'first name'),
            SizedBox(height: 16),
            AppTextField(hint: 'last name'),
            SizedBox(height: 16),
            AppTextField(hint: 'phone number'),
            SizedBox(height: 16),
            AppTextField(hint: 'location'),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
