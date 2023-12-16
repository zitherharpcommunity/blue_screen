# blue_screen

A BlueScreen widget replaces the default ErrorWidget used for Flutter apps.

![screenshot](/assets/screenshot.png)

> The **Blue Screen of Death (BSoD)**, **Blue screen error**, **Blue Screen**, **fatal error**, or **bugcheck**, 
and officially known as a **Stop error**, is a critical error screen displayed 
by the *Microsoft Windows* and *ReactOS* operating systems in the event of a fatal system error. 
The Blue Screen of Death indicates a system crash, in which the operating system 
has reached a critical condition where it can no longer operate safely. 
Possible issues include hardware failure, an issue with or without a device driver, 
or unexpected termination of a crucial process or thread. 

## Features
- Supports run app in a safe mode with `runSafeMode` function.
- Use `BlueScreenWidget` instead of the default `ErrorWidget` to show error messages.
- Wrap widgets in a `SafeModeBuilder` to avoid throw an exception when run app in release mode.

> **Safe mode** is a diagnostic mode of a computer operating system (OS). It can also refer to a mode of operation by application software. Safe mode is intended to help fix most, if not all, problems within an operating system. It is also widely used for removing rogue security software.

## Getting started

### Add the package to the app

- To add the `blue_screen` package as a dependency, run this command in your project terminal:

```sh
flutter pub add blue_screen
```

> See more details at [Installing](https://pub.dev/packages/blue_screen/install) page.

### Declare the font assets (optional)

- Now that you've imported the package, tell Flutter where to find the fonts from the `blue_screen`.
- To declare fonts in this package, prefix the path to the font with `packages/blue_screen`. 
This tells Flutter to look in the `lib` folder of the package for the font.
> See all package fonts at [here](/example/README.md).

```yaml
flutter:
  fonts:
    - family: <font_name>
      fonts:
        - asset: packages/blue_screen/fonts/<file_name>
```

- To use fonts in this package, declare which font you'd like to use like this.
```dart
...
  fontFamily: '<font_name>',
...
```

## Usage

> See complete example at [Example](https://pub.dev/packages/blue_screen/example) page.

```dart
import 'package:blue_screen/blue_screen.dart';

/// Flutter code sample for [BlueScreenWidget].
void main() {
  // Put the app in a safe mode.
  runSafeMode(() {
    // Start the app.
    runApp(
      const BlueScreenExampleApp(),
      onError: (error, stackTrace) => print('$error'),
    );
  });
}
```

## Additional information

Please request features and bugs for us at the [issue](https://github.com/zitherharpcommunity/blue_screen/issues) page.
