# Rest_API Flutter Project

## Description

This is a Flutter application that fetches and displays data from a REST API (DummyJSON). The app uses GetX for state management and presents the data in an attractive, user-friendly interface.

The app's goal is to fetch social media posts, display them in a list, and allow users to see details like titles, content, and associated tags.

## Features

- Fetches data from a REST API.
- Displays data in a scrollable ListView.
- Uses GetX for efficient state management.
- Provides error handling for network or API issues.
- Responsive and visually appealing UI.

## Prerequisites

Before running the project, ensure you have the following installed on your system:

- **Flutter SDK**: [Installation Guide](https://flutter.dev/docs/get-started/install)
- **Git**: [Download Git](https://git-scm.com/downloads)
- **Android Studio/VS Code**: For code editing and Android emulator setup.

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/rest_api.git
    ```

2. Navigate to the project directory:
    ```bash
    cd rest_api
    ```

3. Install the required dependencies:
    ```bash
    flutter pub get
    ```

4. Open Android Emulator or connect your Android device.

5. Run the app:
    ```bash
    flutter run
    ```

## Usage

The app will fetch social media post data from the **DummyJSON** API and display them on the screen. You will see a list of posts where each post includes the title, content, and associated tags.

### Screens

- **Home Screen**: Displays the list of posts fetched from the API.
- **Error Handling**: If there is a network issue or the API fails, an error message will be displayed on the screen.


## Dependencies

- **flutter**: The Flutter SDK for building the app.
- **get**: A state management package used for managing app state efficiently.
- **http**: A package to make HTTP requests to the REST API.

### Packages Used:

- **GetX**: For state management, routing, and dependency injection.
- **http**: For making API requests.

## API Used

- **DummyJSON API**: [DummyJSON](https://dummyjson.com/).
  - Endpoint: `https://dummyjson.com/posts` to fetch social media posts.
 
## screenshoot
![WhatsApp Image 2024-12-05 at 1 16 44 AM](https://github.com/user-attachments/assets/4970bba3-4cfe-47d6-a322-42b1c9f1a6de)

![WhatsApp Image 2024-12-05 at 1 16 40 AM](https://github.com/user-attachments/assets/21043604-7394-45fa-9294-8a23367e8091)



## License

This project is open-source and available under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Author

[Your Name](https://github.com/your-username)


