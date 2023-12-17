import 'package:blue_screen/blue_screen.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [BlueScreenWidget].
void main() {
  // Put the app in a safe mode.
  runSafeMode(() {
    // Start the app.
    runApp(const BlueScreenExampleApp());
  });
}

/// The [BlueScreenWidget] example app.
class BlueScreenExampleApp extends StatefulWidget {
  const BlueScreenExampleApp({super.key});

  @override
  State<BlueScreenExampleApp> createState() => _BlueScreenExampleAppState();
}

class _BlueScreenExampleAppState extends State<BlueScreenExampleApp> {
  OperatingSystem? operatingSystem;

  @override
  Widget build(BuildContext context) {
    // Set the BlueScreen's builder before the app is started.
    return BlueScreenBuilder(
      builder: (exception) {
        // If operating system is selected,
        // use the blue screen with specificied system to shows the error.
        switch (operatingSystem) {
          case OperatingSystem.windows10:
            return BlueScreenWidget.withWindows10(
              exception,
              rebuild: true,
              repeatable: true,
              //stopCode: StopCode.random(),
            );
          case OperatingSystem.windows11:
            return BlueScreenWidget.withWindows11(
              exception,
              rebuild: true,
              repeatable: true,
              stopCode: StopCode.random(),
            );
          case OperatingSystem.windowsServer:
            return BlueScreenWidget.withWindowsServer(
              exception,
              rebuild: true,
              repeatable: true,
              scrollable: true,
              stopCode: StopCode.random(),
            );
          default:
            // By default, show a blue screen in safe mode.
            return BlueScreenWidget(exception);
        }
      },
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: FontFamily.segoe,
        ),
        title: 'blue_screen_example',
        debugShowCheckedModeBanner: false,
        home: SafeModeBuilder(
          enable: false,
          builder: (context) {
            if (operatingSystem != null) {
              // Since the error widget is only used during a build, in this contrived example,
              // we purposely throw an exception in a build function.
              throw Exception('oh no, an error');
            } else {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('BlueScreen Sample'),
                ),
                body: Center(
                  child: TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return SimpleDialog(
                            title: const Text('BlueScreen Types'),
                            children: OperatingSystem.values.map((os) {
                              return SimpleDialogOption(
                                child: Text(os.name),
                                onPressed: () {
                                  setState(() {
                                    operatingSystem = os;
                                  });
                                  Navigator.pop(context);
                                },
                              );
                            }).toList(),
                          );
                        },
                      );
                    },
                    child: const Text('Error Prone'),
                  ),
                ),
              );
            }
          },
          // Show a default BlueScreenWidget when app throws an error.
          creator: (exception) => BlueScreenWidget(exception),
        ),
      ),
    );
  }
}
