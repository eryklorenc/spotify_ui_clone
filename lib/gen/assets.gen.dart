/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $LibGen {
  const $LibGen();

  $LibL10nGen get l10n => const $LibL10nGen();
}

class $LibL10nGen {
  const $LibL10nGen();

  /// File path: lib/l10n/intl_en.arb
  String get intlEn => 'lib/l10n/intl_en.arb';

  /// List of all assets
  List<String> get values => [intlEn];
}

class Assets {
  Assets._();

  static const AssetGenImage album1 = AssetGenImage('assets/album1.jpg');
  static const AssetGenImage album10 = AssetGenImage('assets/album10.jpg');
  static const AssetGenImage album11 = AssetGenImage('assets/album11.jpg');
  static const AssetGenImage album12 = AssetGenImage('assets/album12.jpg');
  static const AssetGenImage album13 = AssetGenImage('assets/album13.jpg');
  static const AssetGenImage album2 = AssetGenImage('assets/album2.jpg');
  static const AssetGenImage album3 = AssetGenImage('assets/album3.jpg');
  static const AssetGenImage album4 = AssetGenImage('assets/album4.jpg');
  static const AssetGenImage album5 = AssetGenImage('assets/album5.jpg');
  static const AssetGenImage album6 = AssetGenImage('assets/album6.jpg');
  static const AssetGenImage album7 = AssetGenImage('assets/album7.jpg');
  static const AssetGenImage album9 = AssetGenImage('assets/album9.jpg');
  static const AssetGenImage logo = AssetGenImage('assets/logo.png');
  static const AssetGenImage logo3 = AssetGenImage('assets/logo3.png');
  static const AssetGenImage top50 = AssetGenImage('assets/top50.jpg');
  static const AssetGenImage user = AssetGenImage('assets/user.jpg');
  static const $LibGen lib = $LibGen();

  /// List of all assets
  List<AssetGenImage> get values => [
        album1,
        album10,
        album11,
        album12,
        album13,
        album2,
        album3,
        album4,
        album5,
        album6,
        album7,
        album9,
        logo,
        logo3,
        top50,
        user
      ];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
