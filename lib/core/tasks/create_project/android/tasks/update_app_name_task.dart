import 'package:bond_cli/core/tasks/core/task.dart';
import 'package:native_project_manipulator/platforms/android/android.dart';

class UpdateAppNameTask extends Task<void> {
  final String appName;
  final AndroidManager androidManager;

  UpdateAppNameTask({
    required this.androidManager,
    required this.appName,
  });

  @override
  String get actionDescription => 'Update android project '
      'appName to: $appName';

  @override
  Future<void> execute() async {
    await androidManager.prepareEnv(
      appName: appName,
    );
  }
}
