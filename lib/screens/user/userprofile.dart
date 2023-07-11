import 'package:flutter/material.dart';
import 'package:storebounty_account/profile/userprofile.dart';
import 'package:storebounty_init/storebountyinit.dart';

class UserProfile extends StatefulWidget {
  static const pageId = "userProfile";
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StoreBountyUserProfile(),
    );
  }
}