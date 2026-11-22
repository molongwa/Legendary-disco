# Legendary Disco — 3D Football Challenge

A starter Godot 4 Android game project. It contains a procedural 3D penalty-shootout scene, on-screen aim/power controls, goalkeeper movement, five-shot scoring, and a simple coin reward loop.

## Open the project
1. Install Godot 4.3 or later from https://godotengine.org/download
2. Extract this folder.
3. In Godot, choose **Import** and select `project.godot`.
4. Open the project and press **F6** or **F5** to play.

## Android export
1. Install Android Studio / Android SDK and configure the paths in Godot Editor Settings.
2. Install Godot's Android export templates.
3. In Project > Export, add an Android preset.
4. Set a unique package name, e.g. `com.yourstudio.legendary-disco`.
5. Export a signed release APK/AAB after configuring your keystore.

## Advertising
AdMob is intentionally not wired to placeholder IDs. Before release:
- Create your own AdMob app and Android ad units.
- Add a maintained Godot Android AdMob plugin / Android library integration.
- Use Google's test ad unit IDs during development.
- Show rewarded ads only after a clear user choice; avoid disruptive ads during active play.
- Add a privacy policy, consent flow where required, and Play Console data-safety disclosures.

## Current prototype scope
- Procedural 3D pitch, goal, ball and goalkeeper
- Aim left/right and higher/lower
- Adjustable shot power
- Five-shot round, goal counter and coins
- Restart flow

This is a playable prototype foundation, not yet a store-ready release. The next development pass should add better player/keeper animations, collision-based shot outcomes, sound, menus, settings, persistence, AdMob integration and device testing.
