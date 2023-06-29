FlutterUI is a collection of Widgets and extension methods that improve the way we construct widget trees in Flutter.

## Vision and Inspiration
This was started by @dancamdev while trying to get closer to SwiftUI modifiers syntax in Flutter.

Modifiers are all about applying changes to a widget - you won't see this package using extensions to wrap widgets in other widgets, with a few exceptions.

## Early Stage
This package is in an early stage, we're still figuring out the best way to do things, so expect breaking changes. We're definitely open to suggestions.

The API is not well documented yet, but we're working on it.

## What's in the box?

### Generic Widget Modifiers
A collection of small extensions that allow you to modify any widget in a declarative way.

- `centered` - centers a widget in its parent
- `expanded` - expands a widget to fill its parent
- `clip` - applies clipping to a widget, given a border radius
- `align` - aligns a widget within its parent
- `offset` - offsets a widget by a given amount

### Text Modifiers
A collection of extensions that allow you to modify strictly Text widgets.

- `copyWith` - copies a Text widget with new values, serves as a basis for the following ones.
- `textAlign` - sets the text alignment
- `fontWeight` - sets the font weight
- `bold` - sets the font weight to bold, as it is a common use case.
- `fontSize` - sets the font size
- `color` - sets the font color

### Padding Modifier
A single extension that allows you to modify the padding of a widget. It supports paddings concatenations and maintains Padding widget interoperability.

- `padding` - sets the padding of a widget, get's two parameters:
    - `List<Edge>` - a list of edges to apply the padding to.
    - `double` - the amount of padding to apply.

An example of this would be:
```dart
Text('Hello World').padding([Edge.top, Edge.horizontal], 10);
```

### Action Modifiers
A single extension that allows you to add interactivity to a widget. It supports multiple actions (tap, long tap and double tap).

- `action` - sets the action of a widget, get's two parameters:
    - `VoidCallback` - sets the action of a widget, get's a function as a parameter.
    - `Action` - sets the action type of a widget, get's an ActionType as a parameter. Defaults to `Action.tap`.

An example of this would be:
```dart
Text('Hello World').action(() => print('Double Tap!'), Action.doubleTap);
```

### Stacks
Wrappers around Column and Row, that provide sensible defaults, we expect you to just pass the children and be done with it, most of the time.

- `VStack` - a wrapper around Column, its height is defined by its children.
- `VStack.expanded` - a wrapper around Column, its height is defined by its parent.
- `VStack.scrollable` - a wrapper around Column, but scrolls for your list-based designs.

- `HStack` - a wrapper around Row, its width is defined by its children.
- `HStack.expanded` - a wrapper around Row, its width is defined by its parent.
- `HStack.scrollable` - a wrapper around Row, but scrolls.

An example of this would be:
```dart
VStack([
        Text('Hello World'),
        Text('Hello World'),
        Text('Hello World'),
    ])
```

### Grid
A wrapper around GridView, that provides sensible defaults, we expect you to just pass the children and be done with it, most of the time.

- `Grid` - a wrapper around GridView, its height is defined by its children.
- `Grid.horizontal` - a wrapper around GridView, its height is defined by its parent.

## Usage

```dart
import 'package:flutterui/flutterui.dart';
```

and then use any of the extensions or widgets.

## Creator and Maintainers
This was started by @dancamdev while trying to get SwiftUI modifiers syntax in Flutter. 

It is maintained by @dancamdev and App and Up Srl (https://www.appandup.app/). While battle testing it in production projects.

## Contributing

Feel free to contribute to this package, it's a work in progress and we're open to suggestions.
