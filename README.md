# blue_screen

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

- Just simply run this line in your project terminal.

```sh
dart run blue_screen
```

- See more details at [Installing]() page.

## Usage

> **Note:** See full details of this example at [Example]() page.

```dart
import 'package:blue_screen/blue_screen.dart';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
