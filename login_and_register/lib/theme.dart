import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4287514965),
      surfaceTint: Color(4287514965),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294957533),
      onPrimaryContainer: Color(4282058516),
      secondary: Color(4282607667),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4291096492),
      onSecondaryContainer: Color(4278591744),
      tertiary: Color(4285616521),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294105855),
      onTertiaryContainer: Color(4280945729),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294441471),
      onSurface: Color(4279770144),
      onSurfaceVariant: Color(4283581253),
      outline: Color(4286870388),
      outlineVariant: Color(4292329923),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281151797),
      inversePrimary: Color(4294947516),
      primaryFixed: Color(4294957533),
      onPrimaryFixed: Color(4282058516),
      primaryFixedDim: Color(4294947516),
      onPrimaryFixedVariant: Color(4285674302),
      secondaryFixed: Color(4291096492),
      onSecondaryFixed: Color(4278591744),
      secondaryFixedDim: Color(4289254034),
      onSecondaryFixedVariant: Color(4281093917),
      tertiaryFixed: Color(4294105855),
      onTertiaryFixed: Color(4280945729),
      tertiaryFixedDim: Color(4292786423),
      onTertiaryFixedVariant: Color(4283972207),
      surfaceDim: Color(4292336351),
      surfaceBright: Color(4294441471),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294046969),
      surfaceContainer: Color(4293652211),
      surfaceContainerHigh: Color(4293322990),
      surfaceContainerHighest: Color(4292928232),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4285345594),
      surfaceTint: Color(4287514965),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4289224554),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280830746),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284055111),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283709035),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287129760),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294441471),
      onSurface: Color(4279770144),
      onSurfaceVariant: Color(4283318081),
      outline: Color(4285225821),
      outlineVariant: Color(4287133304),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281151797),
      inversePrimary: Color(4294947516),
      primaryFixed: Color(4289224554),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4287317842),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284055111),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282475825),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4287129760),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285419398),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292336351),
      surfaceBright: Color(4294441471),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294046969),
      surfaceContainer: Color(4293652211),
      surfaceContainerHigh: Color(4293322990),
      surfaceContainerHighest: Color(4292928232),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282650139),
      surfaceTint: Color(4287514965),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285345594),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278724864),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4280830746),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281406536),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283709035),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294441471),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4281147682),
      outline: Color(4283318081),
      outlineVariant: Color(4283318081),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281151797),
      inversePrimary: Color(4294960872),
      primaryFixed: Color(4285345594),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283504933),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4280830746),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4279383045),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283709035),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282130259),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292336351),
      surfaceBright: Color(4294441471),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294046969),
      surfaceContainer: Color(4293652211),
      surfaceContainerHigh: Color(4293322990),
      surfaceContainerHighest: Color(4292928232),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294947516),
      surfaceTint: Color(4294947516),
      onPrimary: Color(4283833640),
      primaryContainer: Color(4285674302),
      onPrimaryContainer: Color(4294957533),
      secondary: Color(4289254034),
      onSecondary: Color(4279646216),
      secondaryContainer: Color(4281093917),
      onSecondaryContainer: Color(4291096492),
      tertiary: Color(4292786423),
      onTertiary: Color(4282393431),
      tertiaryContainer: Color(4283972207),
      onTertiaryContainer: Color(4294105855),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279243800),
      onSurface: Color(4292928232),
      onSurfaceVariant: Color(4292329923),
      outline: Color(4288646286),
      outlineVariant: Color(4283581253),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292928232),
      inversePrimary: Color(4287514965),
      primaryFixed: Color(4294957533),
      onPrimaryFixed: Color(4282058516),
      primaryFixedDim: Color(4294947516),
      onPrimaryFixedVariant: Color(4285674302),
      secondaryFixed: Color(4291096492),
      onSecondaryFixed: Color(4278591744),
      secondaryFixedDim: Color(4289254034),
      onSecondaryFixedVariant: Color(4281093917),
      tertiaryFixed: Color(4294105855),
      onTertiaryFixed: Color(4280945729),
      tertiaryFixedDim: Color(4292786423),
      onTertiaryFixedVariant: Color(4283972207),
      surfaceDim: Color(4279243800),
      surfaceBright: Color(4281743678),
      surfaceContainerLowest: Color(4278914834),
      surfaceContainerLow: Color(4279770144),
      surfaceContainer: Color(4280033316),
      surfaceContainerHigh: Color(4280756782),
      surfaceContainerHighest: Color(4281414969),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294949057),
      surfaceTint: Color(4294947516),
      onPrimary: Color(4281533199),
      primaryContainer: Color(4291394182),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4289582998),
      onSecondary: Color(4278459136),
      secondaryContainer: Color(4285832033),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4293049852),
      onTertiary: Color(4280550971),
      tertiaryContainer: Color(4289102782),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279243800),
      onSurface: Color(4294572799),
      onSurfaceVariant: Color(4292593351),
      outline: Color(4289896096),
      outlineVariant: Color(4287725440),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292928232),
      inversePrimary: Color(4285740095),
      primaryFixed: Color(4294957533),
      onPrimaryFixed: Color(4281073674),
      primaryFixedDim: Color(4294947516),
      onPrimaryFixedVariant: Color(4284293678),
      secondaryFixed: Color(4291096492),
      onSecondaryFixed: Color(4278392064),
      secondaryFixedDim: Color(4289254034),
      onSecondaryFixedVariant: Color(4280040974),
      tertiaryFixed: Color(4294105855),
      onTertiaryFixed: Color(4280222006),
      tertiaryFixedDim: Color(4292786423),
      onTertiaryFixedVariant: Color(4282788189),
      surfaceDim: Color(4279243800),
      surfaceBright: Color(4281743678),
      surfaceContainerLowest: Color(4278914834),
      surfaceContainerLow: Color(4279770144),
      surfaceContainer: Color(4280033316),
      surfaceContainerHigh: Color(4280756782),
      surfaceContainerHighest: Color(4281414969),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294965753),
      surfaceTint: Color(4294947516),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294949057),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294115301),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4289582998),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965755),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4293049852),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279243800),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294965753),
      outline: Color(4292593351),
      outlineVariant: Color(4292593351),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292928232),
      inversePrimary: Color(4283307554),
      primaryFixed: Color(4294959074),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294949057),
      onPrimaryFixedVariant: Color(4281533199),
      secondaryFixed: Color(4291359664),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4289582998),
      onSecondaryFixedVariant: Color(4278459136),
      tertiaryFixed: Color(4294303999),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4293049852),
      onTertiaryFixedVariant: Color(4280550971),
      surfaceDim: Color(4279243800),
      surfaceBright: Color(4281743678),
      surfaceContainerLowest: Color(4278914834),
      surfaceContainerLow: Color(4279770144),
      surfaceContainer: Color(4280033316),
      surfaceContainerHigh: Color(4280756782),
      surfaceContainerHighest: Color(4281414969),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
