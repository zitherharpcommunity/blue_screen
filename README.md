# blue_screen

![screenshot](/assets/screenshot.png)

> From: [Wikipedia](https://en.wikipedia.org/wiki/Blue_screen_of_death): 
The **Blue Screen of Death (BSoD)**, **Blue screen error**, **Blue Screen**, **fatal error**, or **bugcheck**, 
and officially known as a **Stop error**, is a critical error screen displayed 
by the *Microsoft Windows* and *ReactOS* operating systems in the event of a fatal system error. 
The Blue Screen of Death indicates a system crash, in which the operating system 
has reached a critical condition where it can no longer operate safely. 
Possible issues include hardware failure, an issue with or without a device driver, 
or unexpected termination of a crucial process or thread.

## Features

- Supports run app in a safe mode with `runSafeMode` function.
- Use `BlueScreenWidget` instead of the default `ErrorWidget` to show error message.
- Put your widgets in a `SafeModeBuilder` to avoid throw an exception when run app in release mode.

## Getting started

### Add the package to the app

- To add the `blue_screen` package as a dependency, run this command in your project terminal:

```sh
flutter pub add awesome_package
```

> See more details at 
[Installing](https://pub.dev/packages/blue_screen/install) page.

### Declare the font assets (optional)

- Now that you've imported the package, tell Flutter where to find the fonts from the `blue_screen`.
- To declare package fonts, prefix the path to the font with `packages/blue_screen`. 
This tells Flutter to look in the lib folder of the package for the font.
> See more fonts at [here](../blue_screen/example/README.md).

```yaml
flutter:
  fonts:
    - family: <font_name>
      fonts:
        - asset: packages/blue_screen/fonts/<file_name>
```

- To use package fonts, declare which font you’d like to use and which package the font belongs to.
```dart
...
  fontFamily: '<font_name>',
...
```

## Usage

> See complete example at 
[Example](https://pub.dev/packages/blue_screen/example) page.

```dart
import 'package:blue_screen/blue_screen.dart';
```

## Additional information

Please request features and bugs for us at the [issue](https://github.com/zitherharpcommunity/blue_screen/issues) page.
