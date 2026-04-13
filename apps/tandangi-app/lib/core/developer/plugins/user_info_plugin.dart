import 'package:core_app/core/dev_tools.dart';
import 'package:flutter/material.dart';
import 'package:tandangi/feature/developer/user_info/developer_user_info_page.dart';

class UserInfoPlugin extends DevToolsPlugin {
  @override
  Widget build(BuildContext context) {
    return DeveloperUserInfoPage();
  }

  @override
  String? get listTitle => 'Go to User Info';

  @override
  String get title => 'User Info';
}
