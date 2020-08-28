# thynui

Client for https://github.com/hobroker/thyn

## How to
### Add an icon
1. Copy the file to `assets/icons`
2. Add the asset path to `pubspec.yaml`
3. Add a new static property to `constants/icon_constants.dart` with the icon name and path
```dart
static final newIcon = 'assets/icons/new-icon.png';
```
4. To use the icon, extend `SquareIcon` to create a widget in `views/icons`
```dart
class NewIcon extends SquareIcon {
  @override
  String get iconPath => IconsConstants.newIcon;
}
```

### Use `Connector` widget
1. If you need both `state` and `dispatch`
```dart
Connector(
  converter: (state, dispatch) => _ViewModel(
    count: getCount(state),
    onClick: () => dispatch(SomeAction()),
  ),
  builder: (context, vm) {
    return RaisedButton(
      child: Text('Count: ${vm.count}'),
      onPressed: vm.onClick,
    );
  },
)
```
2. If you only need `state`
```dart
Connector.state(
  converter: getCount,
  builder: (context, count) {
    return Text('Count: ${count}');
  },
)
```
1. If you only need `dispatch`
```dart
Connector.dispatch(
  converter: (dispatch) => () => dispatch(SomeAction()),
  builder: (context, onClick) {
    return RaisedButton(
      child: Text('Something'),
      onPressed: onClick,
    );
  },
)
```
