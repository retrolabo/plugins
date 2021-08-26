// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Autogenerated from Pigeon (v0.1.21), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import
// @dart = 2.12
import 'dart:async';
import 'dart:typed_data' show Uint8List, Int32List, Int64List, Float64List;

import 'package:flutter/services.dart';

class InitializeMessage {
  int maxCacheSize;
  int maxCacheFileSize;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['maxCacheSize'] = maxCacheSize;
    pigeonMap['maxCacheFileSize'] = maxCacheFileSize;
    return pigeonMap;
  }

  // ignore: unused_element
  static InitializeMessage _fromMap(Map<dynamic, dynamic> pigeonMap) {
    if (pigeonMap == null) {
      return null;
    }
    final InitializeMessage result = InitializeMessage();
    result.maxCacheSize = pigeonMap['maxCacheSize'];
    result.maxCacheFileSize = pigeonMap['maxCacheFileSize'];
    return result;
  }
}

class TextureMessage {
  int? textureId;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['textureId'] = textureId;
    return pigeonMap;
  }

  static TextureMessage decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return TextureMessage()..textureId = pigeonMap['textureId'] as int?;
  }
}

class CreateMessage {
<<<<<<< HEAD
  String? asset;
  String? uri;
  String? packageName;
  String? formatHint;
  Map<Object?, Object?>? httpHeaders;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
=======
  String asset;
  String uri;
  String packageName;
  String formatHint;
  bool useCache;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
>>>>>>> cache/caching
    pigeonMap['asset'] = asset;
    pigeonMap['uri'] = uri;
    pigeonMap['packageName'] = packageName;
    pigeonMap['formatHint'] = formatHint;
<<<<<<< HEAD
    pigeonMap['httpHeaders'] = httpHeaders;
    return pigeonMap;
  }

  static CreateMessage decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return CreateMessage()
      ..asset = pigeonMap['asset'] as String?
      ..uri = pigeonMap['uri'] as String?
      ..packageName = pigeonMap['packageName'] as String?
      ..formatHint = pigeonMap['formatHint'] as String?
      ..httpHeaders = pigeonMap['httpHeaders'] as Map<Object?, Object?>?;
=======
    pigeonMap['useCache'] = useCache;
    return pigeonMap;
  }

  // ignore: unused_element
  static CreateMessage _fromMap(Map<dynamic, dynamic> pigeonMap) {
    if (pigeonMap == null) {
      return null;
    }
    final CreateMessage result = CreateMessage();
    result.asset = pigeonMap['asset'];
    result.uri = pigeonMap['uri'];
    result.packageName = pigeonMap['packageName'];
    result.formatHint = pigeonMap['formatHint'];
    result.useCache = pigeonMap['useCache'];
    return result;
>>>>>>> cache/caching
  }
}

class LoopingMessage {
  int? textureId;
  bool? isLooping;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['textureId'] = textureId;
    pigeonMap['isLooping'] = isLooping;
    return pigeonMap;
  }

  static LoopingMessage decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return LoopingMessage()
      ..textureId = pigeonMap['textureId'] as int?
      ..isLooping = pigeonMap['isLooping'] as bool?;
  }
}

class VolumeMessage {
  int? textureId;
  double? volume;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['textureId'] = textureId;
    pigeonMap['volume'] = volume;
    return pigeonMap;
  }

  static VolumeMessage decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return VolumeMessage()
      ..textureId = pigeonMap['textureId'] as int?
      ..volume = pigeonMap['volume'] as double?;
  }
}

class PlaybackSpeedMessage {
  int? textureId;
  double? speed;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['textureId'] = textureId;
    pigeonMap['speed'] = speed;
    return pigeonMap;
  }

  static PlaybackSpeedMessage decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return PlaybackSpeedMessage()
      ..textureId = pigeonMap['textureId'] as int?
      ..speed = pigeonMap['speed'] as double?;
  }
}

class PositionMessage {
  int? textureId;
  int? position;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['textureId'] = textureId;
    pigeonMap['position'] = position;
    return pigeonMap;
  }

  static PositionMessage decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return PositionMessage()
      ..textureId = pigeonMap['textureId'] as int?
      ..position = pigeonMap['position'] as int?;
  }
}

class MixWithOthersMessage {
  bool? mixWithOthers;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['mixWithOthers'] = mixWithOthers;
    return pigeonMap;
  }

  static MixWithOthersMessage decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return MixWithOthersMessage()
      ..mixWithOthers = pigeonMap['mixWithOthers'] as bool?;
  }
}

class VideoPlayerApi {
<<<<<<< HEAD
  Future<void> initialize() async {
    const BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.VideoPlayerApi.initialize', StandardMessageCodec());
    final Map<Object?, Object?>? replyMap =
        await channel.send(null) as Map<Object?, Object?>?;
=======
  Future<void> initialize(InitializeMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.initialize', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
>>>>>>> cache/caching
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          replyMap['error'] as Map<Object?, Object?>;
      throw PlatformException(
        code: error['code'] as String,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      // noop
    }
  }

  Future<TextureMessage> create(CreateMessage arg) async {
    final Object encoded = arg.encode();
    const BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.VideoPlayerApi.create', StandardMessageCodec());
    final Map<Object?, Object?>? replyMap =
        await channel.send(encoded) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          replyMap['error'] as Map<Object?, Object?>;
      throw PlatformException(
        code: error['code'] as String,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return TextureMessage.decode(replyMap['result']!);
    }
  }

  Future<void> dispose(TextureMessage arg) async {
    final Object encoded = arg.encode();
    const BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.VideoPlayerApi.dispose', StandardMessageCodec());
    final Map<Object?, Object?>? replyMap =
        await channel.send(encoded) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          replyMap['error'] as Map<Object?, Object?>;
      throw PlatformException(
        code: error['code'] as String,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      // noop
    }
  }

  Future<void> setLooping(LoopingMessage arg) async {
    final Object encoded = arg.encode();
    const BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.VideoPlayerApi.setLooping', StandardMessageCodec());
    final Map<Object?, Object?>? replyMap =
        await channel.send(encoded) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          replyMap['error'] as Map<Object?, Object?>;
      throw PlatformException(
        code: error['code'] as String,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      // noop
    }
  }

  Future<void> setVolume(VolumeMessage arg) async {
    final Object encoded = arg.encode();
    const BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.VideoPlayerApi.setVolume', StandardMessageCodec());
    final Map<Object?, Object?>? replyMap =
        await channel.send(encoded) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          replyMap['error'] as Map<Object?, Object?>;
      throw PlatformException(
        code: error['code'] as String,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      // noop
    }
  }

  Future<void> setPlaybackSpeed(PlaybackSpeedMessage arg) async {
    final Object encoded = arg.encode();
    const BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.VideoPlayerApi.setPlaybackSpeed',
        StandardMessageCodec());
    final Map<Object?, Object?>? replyMap =
        await channel.send(encoded) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          replyMap['error'] as Map<Object?, Object?>;
      throw PlatformException(
        code: error['code'] as String,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      // noop
    }
  }

  Future<void> play(TextureMessage arg) async {
    final Object encoded = arg.encode();
    const BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.VideoPlayerApi.play', StandardMessageCodec());
    final Map<Object?, Object?>? replyMap =
        await channel.send(encoded) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          replyMap['error'] as Map<Object?, Object?>;
      throw PlatformException(
        code: error['code'] as String,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      // noop
    }
  }

  Future<PositionMessage> position(TextureMessage arg) async {
    final Object encoded = arg.encode();
    const BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.VideoPlayerApi.position', StandardMessageCodec());
    final Map<Object?, Object?>? replyMap =
        await channel.send(encoded) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          replyMap['error'] as Map<Object?, Object?>;
      throw PlatformException(
        code: error['code'] as String,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return PositionMessage.decode(replyMap['result']!);
    }
  }

  Future<void> seekTo(PositionMessage arg) async {
    final Object encoded = arg.encode();
    const BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.VideoPlayerApi.seekTo', StandardMessageCodec());
    final Map<Object?, Object?>? replyMap =
        await channel.send(encoded) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          replyMap['error'] as Map<Object?, Object?>;
      throw PlatformException(
        code: error['code'] as String,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      // noop
    }
  }

  Future<void> pause(TextureMessage arg) async {
    final Object encoded = arg.encode();
    const BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.VideoPlayerApi.pause', StandardMessageCodec());
    final Map<Object?, Object?>? replyMap =
        await channel.send(encoded) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          replyMap['error'] as Map<Object?, Object?>;
      throw PlatformException(
        code: error['code'] as String,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      // noop
    }
  }

  Future<void> setMixWithOthers(MixWithOthersMessage arg) async {
    final Object encoded = arg.encode();
    const BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.VideoPlayerApi.setMixWithOthers',
        StandardMessageCodec());
    final Map<Object?, Object?>? replyMap =
        await channel.send(encoded) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          replyMap['error'] as Map<Object?, Object?>;
      throw PlatformException(
        code: error['code'] as String,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      // noop
    }
  }
}
<<<<<<< HEAD
=======

abstract class TestHostVideoPlayerApi {
  void initialize(InitializeMessage arg);
  TextureMessage create(CreateMessage arg);
  void dispose(TextureMessage arg);
  void setLooping(LoopingMessage arg);
  void setVolume(VolumeMessage arg);
  void setPlaybackSpeed(PlaybackSpeedMessage arg);
  void play(TextureMessage arg);
  PositionMessage position(TextureMessage arg);
  void seekTo(PositionMessage arg);
  void pause(TextureMessage arg);
  void setMixWithOthers(MixWithOthersMessage arg);
  static void setup(TestHostVideoPlayerApi api) {
    {
      const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
          'dev.flutter.pigeon.VideoPlayerApi.initialize',
          StandardMessageCodec());
      channel.setMockMessageHandler((dynamic message) async {
        final Map<dynamic, dynamic> mapMessage =
            message as Map<dynamic, dynamic>;
        final InitializeMessage input = InitializeMessage._fromMap(mapMessage);
        api.initialize(input);
        return <dynamic, dynamic>{};
      });
    }
    {
      const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
          'dev.flutter.pigeon.VideoPlayerApi.create', StandardMessageCodec());
      channel.setMockMessageHandler((dynamic message) async {
        final Map<dynamic, dynamic> mapMessage =
            message as Map<dynamic, dynamic>;
        final CreateMessage input = CreateMessage._fromMap(mapMessage);
        final TextureMessage output = api.create(input);
        return <dynamic, dynamic>{'result': output._toMap()};
      });
    }
    {
      const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
          'dev.flutter.pigeon.VideoPlayerApi.dispose', StandardMessageCodec());
      channel.setMockMessageHandler((dynamic message) async {
        final Map<dynamic, dynamic> mapMessage =
            message as Map<dynamic, dynamic>;
        final TextureMessage input = TextureMessage._fromMap(mapMessage);
        api.dispose(input);
        return <dynamic, dynamic>{};
      });
    }
    {
      const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
          'dev.flutter.pigeon.VideoPlayerApi.setLooping',
          StandardMessageCodec());
      channel.setMockMessageHandler((dynamic message) async {
        final Map<dynamic, dynamic> mapMessage =
            message as Map<dynamic, dynamic>;
        final LoopingMessage input = LoopingMessage._fromMap(mapMessage);
        api.setLooping(input);
        return <dynamic, dynamic>{};
      });
    }
    {
      const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
          'dev.flutter.pigeon.VideoPlayerApi.setVolume',
          StandardMessageCodec());
      channel.setMockMessageHandler((dynamic message) async {
        final Map<dynamic, dynamic> mapMessage =
            message as Map<dynamic, dynamic>;
        final VolumeMessage input = VolumeMessage._fromMap(mapMessage);
        api.setVolume(input);
        return <dynamic, dynamic>{};
      });
    }
    {
      const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
          'dev.flutter.pigeon.VideoPlayerApi.setPlaybackSpeed',
          StandardMessageCodec());
      channel.setMockMessageHandler((dynamic message) async {
        final Map<dynamic, dynamic> mapMessage =
            message as Map<dynamic, dynamic>;
        final PlaybackSpeedMessage input =
            PlaybackSpeedMessage._fromMap(mapMessage);
        api.setPlaybackSpeed(input);
        return <dynamic, dynamic>{};
      });
    }
    {
      const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
          'dev.flutter.pigeon.VideoPlayerApi.play', StandardMessageCodec());
      channel.setMockMessageHandler((dynamic message) async {
        final Map<dynamic, dynamic> mapMessage =
            message as Map<dynamic, dynamic>;
        final TextureMessage input = TextureMessage._fromMap(mapMessage);
        api.play(input);
        return <dynamic, dynamic>{};
      });
    }
    {
      const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
          'dev.flutter.pigeon.VideoPlayerApi.position', StandardMessageCodec());
      channel.setMockMessageHandler((dynamic message) async {
        final Map<dynamic, dynamic> mapMessage =
            message as Map<dynamic, dynamic>;
        final TextureMessage input = TextureMessage._fromMap(mapMessage);
        final PositionMessage output = api.position(input);
        return <dynamic, dynamic>{'result': output._toMap()};
      });
    }
    {
      const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
          'dev.flutter.pigeon.VideoPlayerApi.seekTo', StandardMessageCodec());
      channel.setMockMessageHandler((dynamic message) async {
        final Map<dynamic, dynamic> mapMessage =
            message as Map<dynamic, dynamic>;
        final PositionMessage input = PositionMessage._fromMap(mapMessage);
        api.seekTo(input);
        return <dynamic, dynamic>{};
      });
    }
    {
      const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
          'dev.flutter.pigeon.VideoPlayerApi.pause', StandardMessageCodec());
      channel.setMockMessageHandler((dynamic message) async {
        final Map<dynamic, dynamic> mapMessage =
            message as Map<dynamic, dynamic>;
        final TextureMessage input = TextureMessage._fromMap(mapMessage);
        api.pause(input);
        return <dynamic, dynamic>{};
      });
    }
    {
      const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
          'dev.flutter.pigeon.VideoPlayerApi.setMixWithOthers',
          StandardMessageCodec());
      channel.setMockMessageHandler((dynamic message) async {
        final Map<dynamic, dynamic> mapMessage =
            message as Map<dynamic, dynamic>;
        final MixWithOthersMessage input =
            MixWithOthersMessage._fromMap(mapMessage);
        api.setMixWithOthers(input);
        return <dynamic, dynamic>{};
      });
    }
  }
}
>>>>>>> cache/caching
