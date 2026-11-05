# Pizzaria

TMA3084 Software Engineering Laboratory, Lab Exercise 4.1: Navigation and Routing a Pizza Store App.

A Flutter pizza store app with named-route navigation and WebView pages.

| Route | Page | File |
|---|---|---|
| `/` | Home (store name, image, 3 OutlinedButtons, X and Facebook icons) | `lib/home.dart` |
| `/menu` | Menu (pizza images, names, prices) | `lib/menu.dart` |
| `/about` | About us | `lib/about.dart` |
| `/contact` | Contact information | `lib/contact.dart` |
| `/x` | X (Twitter) in a WebView | `lib/x.dart` |
| `/facebook` | Facebook in a WebView | `lib/facebook.dart` |

Routes are defined in `lib/main.dart`.

## Run

```bash
flutter pub get
flutter run
```

## Checks (also run by GitHub Actions in `.github/workflows/ci.yml`)

```bash
dart format --output=none --set-exit-if-changed .
flutter analyze
flutter test
```
