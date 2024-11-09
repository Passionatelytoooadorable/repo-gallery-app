# Repo Gallery App

Repo Gallery App is a Flutter application that displays a list of public GitHub repositories and a gallery of images from Unsplash. The app provides caching, bookmarking, and interactive navigation for a seamless user experience.

## Features

1. **Splash Screen**: A splash screen that shows up on app launch.
2. **Home Screen**: Contains two tabs:
   - **Repo List**: Displays a list of public repositories with descriptions, comments, created and updated dates.
   - **Gallery**: Shows a grid of images from Unsplash in a gallery format.
3. **Interactive Actions**:
   - **Long Press** on a repo item shows the owner’s information in a popup.
   - **Single Click** on a repo item opens a new screen listing all files within that repository.
   - **Click on an image** in the gallery opens it in full screen with pinch-to-zoom capability.
4. **Cache Management**: 
   - Data from APIs is cached for offline access.
   - First-time app loading waits for the API response; subsequent loads display cached data with background refresh.
5. **Bookmarking**:
   - Bookmark images from the gallery for quick access.
   - Bookmarked images can be accessed via a dedicated screen with a staggered grid layout.

## Getting Started

### Prerequisites
- Ensure you have [Flutter](https://flutter.dev/docs/get-started/install) installed on your system.

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/repo_gallery_app.git
   cd repo_gallery_app

2. Install dependencies:
   ```bash
   flutter pub get

3. Set up Unsplash API:
   ```bash
   flutter run

## Folder Structure
- lib/screens: Contains all screens like `splash_screen.dart`, `home_screen.dart`, `repo_list.dart` etc.
- lib/widgets: Contains reusable widgets.
- lib/utils: Contains utility files for caching, network calls, etc.

## API Usage
1. GitHub API: Fetches a list of public repositories.
   URL: `https://api.github.com/gists/public'
2. Unsplash API: Fetches images for the gallery view.
   URL: `https://api.unsplash.com/photos?client_id=YOUR_ACCESS_KEY`

## Dependencies
  - `http`: For API calls.
  - `cached_network_image`: For image caching.
  - `shared_preferences`: For storing cached data and bookmarks.
  - `flutter_staggered_grid_view`: For displaying bookmarks in a staggered grid.
  - `zoom_pinch_overlay`: For enabling zoom functionality on images.
  - `provider`: For state management across the app.

## Contributing
1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/AmazingFeature`).
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`).
4. Push to the branch (`git push origin feature/AmazingFeature`).
5. Open a pull request.

## License
This project is licensed under the MIT License.
