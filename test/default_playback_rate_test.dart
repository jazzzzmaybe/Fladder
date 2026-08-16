import 'package:flutter_test/flutter_test.dart';

import 'package:fladder/models/settings/video_player_settings.dart';

void main() {
  group('defaultPlaybackRate', () {
    test('defaults to 1.0', () {
      final settings = VideoPlayerSettingsModel();
      expect(settings.defaultPlaybackRate, 1.0);
    });

    test('missing json key falls back to 1.0', () {
      final settings = VideoPlayerSettingsModel.fromJson(const {});
      expect(settings.defaultPlaybackRate, 1.0);
    });

    test('json value is read', () {
      final settings = VideoPlayerSettingsModel.fromJson(const {'defaultPlaybackRate': 1.5});
      expect(settings.defaultPlaybackRate, 1.5);
    });

    test('copyWith updates the value', () {
      final settings = VideoPlayerSettingsModel().copyWith(defaultPlaybackRate: 1.25);
      expect(settings.defaultPlaybackRate, 1.25);
    });
  });
}
