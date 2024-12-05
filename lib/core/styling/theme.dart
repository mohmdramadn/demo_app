import "package:flutter/material.dart";

class MaterialTheme {
  TextTheme get textTheme => TextTheme(
        displayMedium: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        displaySmall: TextStyle(
          color: darkScheme().primary,
          fontWeight: FontWeight.bold,
          fontSize: 26,
        ),
        headlineLarge: TextStyle(
          color: darkScheme().primary,
          fontSize: 35,
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: const TextStyle(fontSize: 22),
        headlineSmall: const TextStyle(fontSize: 20),
        titleLarge: const TextStyle(fontSize: 20),
        titleMedium: const TextStyle(
          fontSize: 20,
          letterSpacing: 0,
          wordSpacing: 1.3,
          height: 2,
        ),
        titleSmall: const TextStyle(
          fontSize: 18,
          wordSpacing: 1.3,
          height: 2,
        ),
        bodyLarge: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
        bodyMedium: const TextStyle(fontSize: 12),
        bodySmall: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        labelLarge: const TextStyle(fontSize: 18),
      );

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff216a4d),
      surfaceTint: Color(0xff216a4d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa9f2cd),
      onPrimaryContainer: Color(0xff002114),
      secondary: Color(0xff216a4d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa9f2cd),
      onSecondaryContainer: Color(0xff002114),
      tertiary: Color(0xff216a4d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffa9f2cd),
      onTertiaryContainer: Color(0xff002114),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffcf8ff),
      onSurface: Color(0xff1b1b21),
      onSurfaceVariant: Color(0xff404943),
      outline: Color(0xff707973),
      outlineVariant: Color(0xffbfc9c1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303036),
      inversePrimary: Color(0xff8dd5b2),
      primaryFixed: Color(0xffa9f2cd),
      onPrimaryFixed: Color(0xff002114),
      primaryFixedDim: Color(0xff8dd5b2),
      onPrimaryFixedVariant: Color(0xff005137),
      secondaryFixed: Color(0xffa9f2cd),
      onSecondaryFixed: Color(0xff002114),
      secondaryFixedDim: Color(0xff8dd5b2),
      onSecondaryFixedVariant: Color(0xff005137),
      tertiaryFixed: Color(0xffa9f2cd),
      onTertiaryFixed: Color(0xff002114),
      tertiaryFixedDim: Color(0xff8dd5b2),
      onTertiaryFixedVariant: Color(0xff005137),
      surfaceDim: Color(0xffdcd9e0),
      surfaceBright: Color(0xfffcf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f2fa),
      surfaceContainer: Color(0xfff0ecf4),
      surfaceContainerHigh: Color(0xffeae7ef),
      surfaceContainerHighest: Color(0xffe4e1e9),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff004d34),
      surfaceTint: Color(0xff216a4d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff3a8163),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff004d34),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff3a8163),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff004d34),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff3a8163),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcf8ff),
      onSurface: Color(0xff1b1b21),
      onSurfaceVariant: Color(0xff3c453f),
      outline: Color(0xff58615b),
      outlineVariant: Color(0xff747d76),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303036),
      inversePrimary: Color(0xff8dd5b2),
      primaryFixed: Color(0xff3a8163),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff1d684b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff3a8163),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff1d684b),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff3a8163),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff1d684b),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdcd9e0),
      surfaceBright: Color(0xfffcf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f2fa),
      surfaceContainer: Color(0xfff0ecf4),
      surfaceContainerHigh: Color(0xffeae7ef),
      surfaceContainerHighest: Color(0xffe4e1e9),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002819),
      surfaceTint: Color(0xff216a4d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004d34),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff002819),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff004d34),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002819),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff004d34),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcf8ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff1d2621),
      outline: Color(0xff3c453f),
      outlineVariant: Color(0xff3c453f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303036),
      inversePrimary: Color(0xffb2fcd6),
      primaryFixed: Color(0xff004d34),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003422),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff004d34),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff003422),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff004d34),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff003422),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdcd9e0),
      surfaceBright: Color(0xfffcf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f2fa),
      surfaceContainer: Color(0xfff0ecf4),
      surfaceContainerHigh: Color(0xffeae7ef),
      surfaceContainerHighest: Color(0xffe4e1e9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff8dd5b2),
      surfaceTint: Color(0xff8dd5b2),
      onPrimary: Color(0xff003825),
      primaryContainer: Color(0xff005137),
      onPrimaryContainer: Color(0xffa9f2cd),
      secondary: Color(0xff8dd5b2),
      onSecondary: Color(0xff003825),
      secondaryContainer: Color(0xff005137),
      onSecondaryContainer: Color(0xffa9f2cd),
      tertiary: Color(0xff8dd5b2),
      onTertiary: Color(0xff003825),
      tertiaryContainer: Color(0xff005137),
      onTertiaryContainer: Color(0xffa9f2cd),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff131318),
      onSurface: Color(0xffe4e1e9),
      onSurfaceVariant: Color(0xffbfc9c1),
      outline: Color(0xff8a938c),
      outlineVariant: Color(0xff404943),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e1e9),
      inversePrimary: Color(0xff216a4d),
      primaryFixed: Color(0xffa9f2cd),
      onPrimaryFixed: Color(0xff002114),
      primaryFixedDim: Color(0xff8dd5b2),
      onPrimaryFixedVariant: Color(0xff005137),
      secondaryFixed: Color(0xffa9f2cd),
      onSecondaryFixed: Color(0xff002114),
      secondaryFixedDim: Color(0xff8dd5b2),
      onSecondaryFixedVariant: Color(0xff005137),
      tertiaryFixed: Color(0xffa9f2cd),
      onTertiaryFixed: Color(0xff002114),
      tertiaryFixedDim: Color(0xff8dd5b2),
      onTertiaryFixedVariant: Color(0xff005137),
      surfaceDim: Color(0xff131318),
      surfaceBright: Color(0xff39383f),
      surfaceContainerLowest: Color(0xff0e0e13),
      surfaceContainerLow: Color(0xff1b1b21),
      surfaceContainer: Color(0xff1f1f25),
      surfaceContainerHigh: Color(0xff2a292f),
      surfaceContainerHighest: Color(0xff35343a),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff92dab6),
      surfaceTint: Color(0xff8dd5b2),
      onPrimary: Color(0xff001b10),
      primaryContainer: Color(0xff589e7e),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xff92dab6),
      onSecondary: Color(0xff001b10),
      secondaryContainer: Color(0xff589e7e),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xff92dab6),
      onTertiary: Color(0xff001b10),
      tertiaryContainer: Color(0xff589e7e),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff131318),
      onSurface: Color(0xfffdf9ff),
      onSurfaceVariant: Color(0xffc4cdc6),
      outline: Color(0xff9ca59e),
      outlineVariant: Color(0xff7c857f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e1e9),
      inversePrimary: Color(0xff005338),
      primaryFixed: Color(0xffa9f2cd),
      onPrimaryFixed: Color(0xff00150b),
      primaryFixedDim: Color(0xff8dd5b2),
      onPrimaryFixedVariant: Color(0xff003f2a),
      secondaryFixed: Color(0xffa9f2cd),
      onSecondaryFixed: Color(0xff00150b),
      secondaryFixedDim: Color(0xff8dd5b2),
      onSecondaryFixedVariant: Color(0xff003f2a),
      tertiaryFixed: Color(0xffa9f2cd),
      onTertiaryFixed: Color(0xff00150b),
      tertiaryFixedDim: Color(0xff8dd5b2),
      onTertiaryFixedVariant: Color(0xff003f2a),
      surfaceDim: Color(0xff131318),
      surfaceBright: Color(0xff39383f),
      surfaceContainerLowest: Color(0xff0e0e13),
      surfaceContainerLow: Color(0xff1b1b21),
      surfaceContainer: Color(0xff1f1f25),
      surfaceContainerHigh: Color(0xff2a292f),
      surfaceContainerHighest: Color(0xff35343a),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffeefff3),
      surfaceTint: Color(0xff8dd5b2),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff92dab6),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffeefff3),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff92dab6),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffeefff3),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff92dab6),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff131318),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff4fdf5),
      outline: Color(0xffc4cdc6),
      outlineVariant: Color(0xffc4cdc6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e1e9),
      inversePrimary: Color(0xff003120),
      primaryFixed: Color(0xffadf6d1),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff92dab6),
      onPrimaryFixedVariant: Color(0xff001b10),
      secondaryFixed: Color(0xffadf6d1),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff92dab6),
      onSecondaryFixedVariant: Color(0xff001b10),
      tertiaryFixed: Color(0xffadf6d1),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xff92dab6),
      onTertiaryFixedVariant: Color(0xff001b10),
      surfaceDim: Color(0xff131318),
      surfaceBright: Color(0xff39383f),
      surfaceContainerLowest: Color(0xff0e0e13),
      surfaceContainerLow: Color(0xff1b1b21),
      surfaceContainer: Color(0xff1f1f25),
      surfaceContainerHigh: Color(0xff2a292f),
      surfaceContainerHighest: Color(0xff35343a),
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
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
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
