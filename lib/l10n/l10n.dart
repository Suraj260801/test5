import 'dart:ui';

enum Language {
  english(
    Locale('en', 'US'),
    // Assets.english,
    'English',
  ),
  japanese(
    Locale('ja', 'JP'),
    //Assets.indonesia,
    '英語',
  ),
  thai(
      Locale('th', 'TH'),
      //Assets.thailand,
      'ภาษาอังกฤษ'
  );

  /// Add another languages support here
  // const Language(this.value, this.image, this.text);
  const Language(this.value, this.text);

  final Locale value;

  //final AssetGenImage image; // Optional: this properties used for ListTile details
  final String text; // Optional: this properties used for ListTile details
}
