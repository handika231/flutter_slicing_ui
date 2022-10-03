import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_doctor/common/constant.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ImagePicker _picker = ImagePicker();
  Image? _image;

  void captureImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = Image.file(
        File(image!.path),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 30),
              child: Text(
                'Profile Page',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: AppStyle.semiBold,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                captureImage();
              },
              child: Container(
                height: 130,
                width: 130,
                margin: const EdgeInsets.only(
                  top: 40,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: _image == null
                        ? const AssetImage('assets/upload_photo.png')
                        : _image!.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 16,
              ),
              child: Column(
                children: [
                  Text(
                    'User Profile',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: AppStyle.semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Software Engineer',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: AppStyle.light,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Edit Profile'),
                    subtitle: const Text('Update your profile'),
                    trailing: const Icon(Icons.chevron_right),
                    leading: Icon(Icons.person, color: AppStyle.cyanColor),
                  ),
                  ListTile(
                    title: const Text('Language'),
                    subtitle: const Text('Available in English'),
                    trailing: const Icon(Icons.chevron_right),
                    leading: Icon(Icons.language, color: AppStyle.cyanColor),
                  ),
                  ListTile(
                    title: const Text('Give Us Rate'),
                    subtitle: const Text('On Google Play Store'),
                    trailing: const Icon(Icons.chevron_right),
                    leading: Icon(Icons.star_border, color: AppStyle.cyanColor),
                  ),
                  ListTile(
                    title: const Text('Help Center'),
                    subtitle: const Text('Read our guidelines'),
                    trailing: const Icon(Icons.chevron_right),
                    leading:
                        Icon(Icons.document_scanner, color: AppStyle.cyanColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
