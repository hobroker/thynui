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
