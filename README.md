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
