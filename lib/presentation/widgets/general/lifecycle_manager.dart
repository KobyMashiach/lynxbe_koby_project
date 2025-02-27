import 'package:flutter/material.dart';
import 'package:lynxbe_koby_project/data/datasources/user_data_source.dart';
import 'package:provider/provider.dart';
import 'package:lynxbe_koby_project/domain/usecases/manage_lifecycle.dart';

class LifecycleManager extends StatefulWidget {
  final Widget child;

  const LifecycleManager({super.key, required this.child});

  @override
  _LifecycleManagerState createState() => _LifecycleManagerState();
}

class _LifecycleManagerState extends State<LifecycleManager>
    with WidgetsBindingObserver {
  late final ManageLifecycle _manageLifecycle;

  @override
  void initState() {
    super.initState();
    _manageLifecycle = ManageLifecycle(context.read<UserDataSource>());
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
      _manageLifecycle.onResume();
    } else if (state == AppLifecycleState.paused) {
      _manageLifecycle.onPause();
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
