# Nika

Live activities for the MacBook notch. Music, calendar, HUDs, battery, headphones and a file tray, all living around the notch instead of cluttering your screen.

**[Download the latest version](../../releases/latest)** · **[Buy a license](https://nika.lemonsqueezy.com)**

## What it does

- **Now Playing**: artwork and a live equalizer next to the notch that follows the actual bass, mids and highs. Hover for a player with scrubbing. Works with Music, Spotify, browsers and anything that reports Now Playing.
- **Calendar**: today's and tomorrow's events when nothing plays. Pick which calendars show up, click an event to open it, **Join** a Zoom, Meet, Teams, Webex or FaceTime call right from the notch, and get a heads-up before it starts.
- **HUDs**: replaces the volume and brightness HUD (hold ⇧⌥ for finer steps). Shows volume changed from Control Center or AirPods too, and which output you switched to (speakers, AirPlay, display).
- **Battery**: charging, low battery, Low Power Mode
- **Headphones**: connect and disconnect, AirPods and Beats battery
- **File Tray**: drop files on the notch, drag them out later
- **Lock screen**: unlock animation, lock and unlock sounds
- **Gestures**: swipe sideways on the notch to skip tracks, down to open, up to close
- **Integrations**: other apps can post to the notch through `nika://` links (see below)

## Requirements

- macOS 14 Sonoma or newer (live equalizer needs 14.2)
- Apple Silicon Mac. Built for the notch, but works on Macs without one too.

## Install

Paste this into Terminal. It downloads the latest version into Applications and opens it:

```sh
curl -fsSL https://raw.githubusercontent.com/greeenos/nika/main/install.sh | sh
```

Or by hand:

1. Download `Nika.dmg` from [Releases](../../releases/latest), open it and drag **Nika** into **Applications**.
2. Open Nika. macOS says it can't verify the developer, because Nika isn't distributed through Apple. Open **System Settings → Privacy & Security**, scroll down and click **Open Anyway**. Only needed once.

Then enter the license key from your purchase email and click **Activate**.

### Updates

Nika updates itself: when a new version is out, it downloads it from this page, checks that it's signed by the same developer as the version you have, installs it and restarts in a second. Your settings and permissions stay. You can also check in Settings → About.

### Permissions

Nika asks only when a feature needs it, and everything is optional:

| Permission | Used for |
|---|---|
| Accessibility | Replacing the volume and brightness HUD |
| Calendars | Showing your events |
| Audio Capture | The live equalizer. Audio is only measured, never recorded or stored. |
| Bluetooth | Headphones and their battery |

## Using Nika

- **Hover** or **click** the notch to open it.
- **Double-click** or **right-click** the notch for Settings and Quit. Nika has no menu bar icon by default; you can turn one on in Settings → General. Opening Nika again from Applications also brings up Settings.
- **Drag files** onto the notch to keep them in the tray.

## Integrations

Anything that can open a link can talk to the notch: Shortcuts (*Open URLs*), Raycast, Alfred, Keyboard Maestro, scripts, cron jobs.

```sh
open "nika://show?icon=checkmark.circle.fill&title=Build%20done&value=2m%2014s&color=green"
open "nika://show?icon=arrow.down.circle.fill&title=Download&progress=0.6&color=blue"
open "nika://settings"
```

Parameters for `show`:

| Parameter | Meaning |
|---|---|
| `icon` | Any [SF Symbol](https://developer.apple.com/sf-symbols/) name |
| `title` | Text left of the notch |
| `value` | Text right of the notch |
| `progress` | 0 to 1, draws a progress bar |
| `color` | `red`, `orange`, `yellow`, `green`, `mint`, `teal`, `cyan`, `blue`, `indigo`, `purple`, `pink`, `gray`, `white` or a hex code like `ff8800` |
| `duration` | Seconds to stay visible (0.5 to 30) |

Remember to URL-encode spaces as `%20`.

## License

A key works on a limited number of your own Macs. To move it to a new Mac, click **Deactivate This Mac** in Settings → License on the old one first.

Nika checks the key with the license server once a day and keeps working offline for 14 days.

## Privacy

Nika collects nothing. The only network request is the license check to `api.lemonsqueezy.com`, which sends your license key and your Mac's name.

## Support

Found a bug or want a feature? [Open an issue](../../issues).
