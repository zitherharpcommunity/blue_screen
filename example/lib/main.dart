import 'package:blue_screen/blue_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [BlueScreenWidget].
void main() {
  // Put the app in a safe mode.
  runSafeMode(() {
    // Start the app.
    runApp(const BlueScreenExampleApp());
  });
}

class BlueScreenExampleApp extends StatefulWidget {
  const BlueScreenExampleApp({super.key});

  @override
  State<BlueScreenExampleApp> createState() => _BlueScreenExampleAppState();
}

class _BlueScreenExampleAppState extends State<BlueScreenExampleApp> {
  var throwError = false;

  @override
  Widget build(BuildContext context) {
    // Set the BlueScreen's builder before the app is started.
    return BlueScreenBuilder(
      builder: (details) {
        // If we're in debug mode,
        // use the blue screen on Windows 10 to shows the error.
        if (kDebugMode) {
          return BlueScreenWidget.withWindows10(
            details,
            rebuild: true,
            repeatable: true,
            fontFamily: FontFamily.wgl4,
          );
        } else {
          // In release builds, show a blue screen on Windows 11 instead:
          return BlueScreenWidget.withWindows11(details);
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          
          fontFamily: FontFamily.segoe,
        ),
        home: SafeModeBuilder(
          enable: false,
          builder: (context) {
            if (throwError) {
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
                      setState(() {
                        throwError = true;
                      });
                    },
                    child: const Text('Error Prone'),
                  ),
                ),
              );
            }
          },
          // Show a default BlueScreenWidget when app throws an error.
          provider: (exception) => BlueScreenWidget(exception),
        ),
      ),
    );
  }
}
