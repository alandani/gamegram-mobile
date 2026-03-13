# Gamegram Mobile

Gamegram is a Flutter mobile app where players can:

- Sign up and log in
- Browse a feed of WebGL/HTML games
- Like and comment on games
- Follow their favourite creators
- Play games embedded inside the app
- Upload their own game builds (as zip files – planned)

> Status: **UI shell + demo data only**. Auth, backend API, real uploads, and WebGL integration are planned in later steps.

---

## 1. Tech stack

- `Flutter` (multi‑platform, Dart 3)
- Material 3 + custom dark purple theme
- Target platforms: iOS, Android, Web (for WebGL games)

---

## 2. Project structure (high level)

- `lib/main.dart` – entry point, theme, navigation shell, and core screens:
  - Login screen
  - Bottom navigation shell (Home / Play / Profile)
  - Feed screen (game cards, likes/comments placeholders)
  - Game player screen (placeholder for embedded WebGL/HTML game)
  - Profile screen (stats + games grid + Upload button)
- `lib/models.dart` – core domain models (`Game`, `UserProfile`)
- `lib/mock_data.dart` – simple in‑memory demo data for UI
- `assets/placeholder_space.png` – temporary thumbnail for all demo games
- `pubspec.yaml` – dependencies and asset registration

As the app grows we will introduce:

- `lib/features/<feature>/` folders per feature (auth, feed, game_player, profile, upload)
- `lib/services/` for API clients, storage, and auth

---

## 3. Getting started

### 3.1 Prerequisites

- Flutter SDK installed (`flutter --version` should work)
- Xcode + iOS tooling (for iOS)
- Android Studio / Android SDK (for Android)

### 3.2 Run the app

From the repo root:

```bash
flutter pub get
flutter run
```

The default screen is the **Login** UI. Tapping **Log In** will navigate to the main shell with:

- **Home** tab – discover feed of demo games
- **Play** tab – placeholder for embedded WebGL/HTML game
- **Profile** tab – creator profile with stats and demo games grid

---

## 4. Current implementation details

### 4.1 UI & navigation

- Root widget: `GamegramApp` (`lib/main.dart`)
  - Dark purple gradient background inspired by the design
  - Uses `NavigationBar` with 3 destinations (`Home`, `Play`, `Profile`)
- `LoginScreen`
  - Username/email + password fields (`_GamegramTextField`)
  - Log In button currently performs a **dummy navigation** (no real auth yet)
- `ShellScreen`
  - Holds the 3 tabs and manages the selected index
- `FeedScreen`
  - Shows a vertical list of `Game` cards using `demoGames`
  - Each card has creator info, a large image, and like/comment/save stats
- `GamePlayerScreen`
  - Text placeholder indicating where the embedded WebGL/HTML game will appear
- `ProfileScreen`
  - Shows avatar, username, posts/followers/following from `demoProfile`
  - Buttons: **Edit Profile** and **Upload Game** (no logic wired yet)
  - Grid of demo games using `demoGames`

### 4.2 Models & demo data

- `Game`:
  - `id`, `title`, `developerName`, `likes`, `comments`, `thumbnailAsset`, `isLiked`
- `UserProfile`:
  - `id`, `username`, `posts`, `followers`, `following`
- `lib/mock_data.dart`:
  - `demoProfile` – static profile that matches the design
  - `demoGames` – 6 placeholder games reusing the same thumbnail asset

### 4.3 Assets

- `assets/placeholder_space.png`:
  - Dummy image file used wherever a game thumbnail is needed
- Registered in `pubspec.yaml` under:

  ```yaml
  flutter:
    uses-material-design: true
    assets:
      - assets/placeholder_space.png
  ```

---

## 5. Planned features & next steps

These are **not implemented yet** but will guide upcoming work:

1. **Authentication**
   - Email/password sign up and login
   - Persisted session, logout, and basic validation
2. **Backend API integration**
   - Real `Game` and `UserProfile` data loaded from an API
   - Paginated feed, like/comment/follow actions wired to backend
3. **WebGL/HTML game integration**
   - Use `webview_flutter` for mobile to load hosted WebGL/HTML builds
   - On web, embed the game view directly in a `HtmlElementView`
4. **Game upload flow**
   - Upload a `.zip` of a game build
   - Show upload progress and post‑upload metadata form (title, description, tags)
5. **Developer profiles**
   - Differentiate between player and creator roles
   - Show creator’s games, followers, and activity
6. **Comments & social interactions**
   - Comments list UI per game
   - Like/follow toggles and counts

This README will be updated as we implement each of these features.

---

## 6. Git & GitHub notes for this repo

Initial setup to push this project to GitHub:

```bash
cd /Users/alandani/Code/Flutter/gamegram
git add .
git commit -m "Initial Gamegram scaffold"
git push -u origin main
```

If you see `src refspec main does not match any`, it means there is **no commit yet**. Make sure `git commit` runs successfully before pushing.
