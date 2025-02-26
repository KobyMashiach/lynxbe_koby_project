import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lynxbe_koby_project/core/hive/user_data_source.dart';
import 'package:provider/provider.dart';

class LifecycleManager extends StatefulWidget {
  final Widget child;

  const LifecycleManager({super.key, required this.child});

  @override
  _LifecycleManagerState createState() => _LifecycleManagerState();
}

class _LifecycleManagerState extends State<LifecycleManager>
    with WidgetsBindingObserver {
  final logName = "LifecycleManager";

  @override
  void initState() {
    super.initState();
    context.read<UserDataSource>().initialise();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.resumed) {
      log(name: logName, "App in resumed state");
      context.read<UserDataSource>().initialise();
    } else if (state == AppLifecycleState.paused) {
      log(name: logName, "App in paused state");
      context.read<UserDataSource>().closeBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
