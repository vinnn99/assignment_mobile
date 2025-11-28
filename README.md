# assignment_mobile

A sample Flutter app demonstrating a small global counter backed by a simple BLoC.

This assignment adds three pages that use the Counter BLoC to perform operations against
the same global integer value:

- Halaman Penjumlahan (Addition) — enter a number and press "Tambah" to add it.
- Halaman Pengurangan (Subtraction) — enter a number and press "Kurangi" to subtract it.
- Halaman Perkalian (Multiplication) — enter a number and press "Kali" to multiply it.

The counter state is global and shared between pages via a CounterBloc instance passed through
the named routes from `main.dart`.

How to run:

```powershell
flutter pub get
flutter run
```

Run tests:

```powershell
flutter test
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
