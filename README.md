<p align="center">
  <img src="docs/art/hero.gif" alt="Jaromes Lite: Roamie, Anime Girl, JARVIS, Sarah and Adrian, little purple and pink pixel buddies, wave and chat in speech bubbles: At your service, Quiz time, Flashcards, Due tomorrow: chem, Let's focus" width="100%">
</p>

<p align="center">
  <b>A friendly pixel buddy for your Mac that you can talk to.</b><br>
  It keeps your reminders, quizzes you before tests, tells you how your day went,<br>
  and does the boring computer stuff while you get on with the important things.
</p>

<p align="center">
  <img alt="Mac" src="https://img.shields.io/badge/for-Mac-ff78d6?style=for-the-badge">
  <img alt="Free and open source" src="https://img.shields.io/badge/free-open%20source-a855f7?style=for-the-badge">
  <img alt="License AGPL-3.0" src="https://img.shields.io/badge/license-AGPL--3.0-6b21a8?style=for-the-badge">
</p>

<p align="center">
  🍎 On a Mac? → <a href="https://github.com/Vanshworkff/jaromes-lite-mac">jaromes-lite-mac</a>
  &nbsp;·&nbsp;
  🪟 On Windows? → <a href="https://github.com/Vanshworkff/jaromes-lite-windows">jaromes-lite-windows</a>
</p>

---

## 📸 Take a look

<p align="center">
  <img src="docs/screenshots/mac-home.png" alt="The Jaromes Lite panel dropping down from the Mac menu bar" width="100%">
</p>
<table>
  <tr>
    <td width="50%"><img src="docs/screenshots/mac-study.png" alt="Routines: morning briefing, evening summary and study stats"></td>
    <td width="50%"><img src="docs/screenshots/mac-setup.png" alt="The setup guide showing the Mac shortcuts"></td>
  </tr>
  <tr>
    <td align="center"><b>📚 Study stats and routines</b></td>
    <td align="center"><b>🧭 A friendly setup guide</b></td>
  </tr>
</table>

<sub>Real Jaromes Lite screens, shown with sample data.</sub>

---

## 👋 Meet your buddy

Jaromes Lite lives in your **menu bar (top right of your screen)**. Hold two keys, say what you need, let go. That's it.

```
        ┌───────────────────────────────┐
        │  "Quiz me on chemistry" 🎙️    │      you hold Control + Option
        └──────────────┬────────────────┘      and just talk
                       ▼
                  ( ◕‿◕ )  ✨
                       │
        ┌──────────────▼────────────────┐
        │  "Okay! Question 1: what is   │      it answers out loud,
        │   the charge of an electron?" │      like a friend would
        └───────────────────────────────┘
```

You don't need to be "good with computers". If you can talk, you can use it. 💜

---

## ✨ What it can do

| | | |
|:---:|---|---|
| 🎙️ | **Talk or type** | Ask anything by voice or keyboard. It answers in a short, friendly way, and can even search the web for you. |
| ⏰ | **Reminders & to-dos** | *"Remind me to call Mum at 6"*. It remembers, nudges you on time, and cheers when you finish. |
| ☀️ | **Morning briefing** | The first time you talk each day, it tells you what's on today. |
| 📚 | **Flashcards** | *"Make flashcards from my biology PDF"*. It reads your notes and saves the cards in decks. |
| 🧠 | **Smart quizzes** | *"Quiz me on bio"*. Cards you get right come back later; ones you miss come back soon (spaced repetition). |
| 📄 | **Reads your PDFs** | Lecture slides, worksheets, textbook chapters: it explains, sums up or turns them into cards. |
| 🎯 | **Focus timer** | *"Help me focus for 30 minutes"*. It gently teases you back if you wander off to YouTube. |
| 🌙 | **Evening summary** | After 6 pm it tells you what you got done, how long you studied, your streak, and what's due tomorrow. |
| 🖱️ | **Works your apps** | Fills in forms, clicks buttons, opens apps and files, and runs commands, always **asking first** before changing anything. |
| 🔄 | **Updates itself** | When a new version is out, an **Update** button appears in the panel. One click and you're on the latest. |
| 🤖 | **Background agents** | *"Make me a study timetable website"*. A helper works on it in the background while you keep chatting. |

---

## 🔁 How a study day looks

```mermaid
flowchart LR
    A["☀️ Morning<br/>“What's due today?”"] --> B["📄 Class notes<br/>“Make flashcards<br/>from this PDF”"]
    B --> C["🎯 Focus block<br/>30 minutes,<br/>no distractions"]
    C --> D["🧠 Quiz time<br/>“Quiz me on bio”"]
    D --> E["🌙 Evening<br/>“How did my day go?”"]
    E -. next day, missed cards come back .-> D
    style A fill:#2a0b3a,stroke:#ff78d6,color:#ffe8f8
    style B fill:#2a0b3a,stroke:#ff78d6,color:#ffe8f8
    style C fill:#2a0b3a,stroke:#ff78d6,color:#ffe8f8
    style D fill:#2a0b3a,stroke:#ff78d6,color:#ffe8f8
    style E fill:#2a0b3a,stroke:#ff78d6,color:#ffe8f8
```

### 🧠 How the flashcards learn with you

<p align="center">
  <img src="docs/art/study.gif" alt="Roamie quizzes you on biology flashcards: a right answer comes back in 3 days, a missed one goes back to box 1, and it ends with 2 of 3 right and a 5-day streak" width="100%">
</p>

```mermaid
flowchart TD
    Q["❓ It asks you a card"] --> R{"Did you get it right?"}
    R -- "✅ Yes" --> U["⬆️ Card moves up a box<br/>comes back in 1 → 3 → 7 → 16 → 35 days"]
    R -- "❌ Not yet" --> D["🔁 Back to box 1<br/>you'll see it again today"]
    U --> M["💪 You remember it for good"]
    D --> Q
    style Q fill:#2a0b3a,stroke:#ff78d6,color:#ffe8f8
    style R fill:#3d0d3a,stroke:#ffa8e5,color:#ffe8f8
    style U fill:#2a0b3a,stroke:#a855f7,color:#ffe8f8
    style D fill:#2a0b3a,stroke:#a855f7,color:#ffe8f8
    style M fill:#4a1060,stroke:#ff78d6,color:#ffe8f8
```

---

## 🚀 Get started (about 5 minutes)

**You need:** A Mac with macOS 13.5 or newer (Apple silicon or Intel), and an AI account to give your buddy a brain: a **Claude** plan, a **ChatGPT** plan, or an API key from Anthropic, OpenAI or Google. The setup guide walks you through it.

### 1. Download 📦

Go to **[Releases](../../releases)** and download the file that matches your Mac:

| Your Mac | Download |
|---|---|
| M1, M2, M3, M4… (Apple silicon) | `Jaromes-Lite_…_mac-apple-silicon.dmg` |
| Older Mac with an Intel chip | `Jaromes-Lite_…_mac-intel.dmg` |

> 🤔 Not sure which one? Click the  Apple menu → **About This Mac**. If it says *Chip: Apple M…*, pick Apple silicon.

### 2. Drag it in 🖱️

```
   ┌──────────────────────────────────────────┐
   │                                          │
   │    ( ◕‿◕ )      ───────▶     📁           │
   │   Jaromes Lite             Applications   │
   │                                          │
   └──────────────────────────────────────────┘
          drag the buddy onto the folder
```

### 3. Open it the first time 🔓

Jaromes Lite is a free, open-source app without a paid Apple certificate, so macOS asks you to confirm once:

1. Open **Applications**, **right-click** Jaromes Lite and choose **Open**.
2. Click **Open** in the box that appears.

If macOS says the app *"is damaged"*, open **Terminal** and paste this, then try again:

```bash
xattr -cr "/Applications/Jaromes Lite.app"
```

You only do this once. 🎉

### 4. Say hi! 👋

The setup guide opens by itself. It helps you pick your buddy's look and voice, and sign in to your AI account.

When it asks, allow **Microphone** (so it can hear you), **Accessibility** (so it can work in other apps for you) and **Files** access. You can change these any time in **System Settings → Privacy & Security**.

Then hold **<kbd>Control</kbd> + <kbd>Option</kbd>**, say *"Hi!"*, and let go. 🎉

---

## ⌨️ Handy shortcuts

| Do this | Press |
|---|---|
| 🎙️ Talk | Hold <kbd>Control</kbd> + <kbd>Option</kbd>, speak, let go |
| ⌨️ Type a question | Tap <kbd>Control</kbd> + <kbd>Option</kbd> quickly (press both, let go) |
| 👀 Show or hide your buddy | <kbd>Control</kbd> + <kbd>Option</kbd> + <kbd>S</kbd> |
| 📋 See your reminders | <kbd>Control</kbd> + <kbd>Option</kbd> + <kbd>L</kbd> |

You can change them in the panel: click the icon in the menu bar → **Settings**.

---

## 💬 Things to try

> 🎙️ *"Make 10 flashcards about photosynthesis, then quiz me."*
>
> 🎙️ *"Read the PDF called chapter 3 in my Downloads and tell me the main ideas."*
>
> 🎙️ *"Remind me to revise maths every weekday at 5."*
>
> 🎙️ *"Focus for 45 minutes on my essay."*
>
> 🎙️ *"How did my day go?"*
>
> 🎙️ *"What's the weather in London tomorrow?"*

Every small step counts. Five minutes of flashcards today beats a three-hour cram tomorrow. You've got this! 💪💜

---

## 🔄 Staying up to date

```
   new version on GitHub  ──▶  ( ◕‿◕ ) "Update to 1.0.1"  ──▶  click  ──▶  ✨ restarted, all set
```

Jaromes Lite checks this repo's **[latest release](../../releases/latest)** on its own. When there's something new, the button at the top of its panel turns into **Update to …**. Click it and it downloads, installs and restarts by itself. Your reminders, flashcards and settings stay just as they were. Every update is **digitally signed**, so your buddy only installs real ones from this repo.

> 💡 On a Mac, macOS may ask for the microphone and accessibility permissions again after an update, because the app is not signed with a paid Apple certificate. Just click **Allow** again.

---

## 🔒 Safe by design

- 🙋 **It asks before it acts.** Changing files, running commands and clicking things in apps all need your **yes** (and are off until you switch them on).
- ✉️ **Nothing gets sent in your name** without you seeing the exact text first.
- 🗝️ **Your keys stay on your computer**, in the macOS Keychain.
- 🏠 **Your reminders, flashcards and memory** are saved on your computer only.
- 🙈 **Lite edition:** it never looks at or draws on your screen.

---

## 🛠️ Build it yourself (for developers)

```bash
# 1. Tools: Node.js 22+, Rust (https://rustup.rs) and the Tauri CLI
cargo install tauri-cli --version "^2" --locked

# 2. Get the code and its packages
git clone https://github.com/Vanshworkff/jaromes-lite-mac.git
cd jaromes-lite-mac/showcase/tauri/sidecar && npm ci && cd ..

# 3. Build it (takes 5–10 minutes the first time)
TAURI_BUNDLES=app,dmg ./build.sh
# → src-tauri/target/release/bundle/dmg/
```

Pushing a tag like `v1.0.1` makes GitHub build the Mac .dmg files, publish a release, and post the signed update that installed copies pick up (see `.github/workflows/`). Bump `version` in `showcase/tauri/src-tauri/tauri.conf.json` to match the tag first. The update signing key lives in the repo's `TAURI_SIGNING_PRIVATE_KEY` secret.

---

## 💜 Credits

**Jaromes Lite is created by Vansh Bohra.**

It's built on the open-source **[Roamies](https://github.com/KenKaiii/Roamies)** desktop companion by Ken Kai. Thank you for sharing it with the world! Third-party parts and their licenses are listed in [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).

## 📜 License

[GNU AGPL-3.0](LICENSE), the same as Roamies. You're free to use, change and share it; if you share a changed version, share its source code too. 🤝

<p align="center"><sub>Made with 💜 by Vansh Bohra</sub></p>
