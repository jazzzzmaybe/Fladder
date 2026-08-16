# Fladder fork (jazzzzmaybe)

Personal fork of [DonutWare/Fladder](https://github.com/DonutWare/Fladder) with one
extra feature, maintained for personal use on Windows.

## Added: default playback rate

- **Settings → Player → Default playback rate** slider (0.25x–3.0x).
- Every new video starts at this rate. Speed changes made during playback are
  NOT kept across videos (unlike upstream PR #1073's "remember last speed").
- Audio playback is unaffected (always 1x).
- Implementation is Dart-only (desktop/media_kit path); Android keeps upstream
  behaviour.

Inspiration and credit: upstream PR
[#1073](https://github.com/DonutWare/Fladder/pull/1073) by Vicente Higino
(rejected upstream). Reimplemented as a single commit on top of upstream
`develop`.

## Getting builds

CI (`build.yml`) builds all platforms when commits are pushed to this fork's
`master` branch. Download the Windows artifacts from the latest successful
run: **Actions → <latest run> → Artifacts → `fladder-windows-portable`**
(portable) or `fladder-windows-installer` (Inno Setup).

## Syncing with upstream

```bash
git fetch upstream
git checkout master
git merge upstream/develop   # resolve conflicts if any, keep the feature intact
git push fork master
```

## Commit history

- `feat: add default playback rate setting` — the feature (single commit).
