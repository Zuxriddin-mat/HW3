# hw3_zukhriddin_fakhriddinov

Name: Zukhriddin Fakhriddinov

Group: JSE 02

ID: 2110053

#### Running the Project

1. **Clone the Repository:**
   ```bash
   git clone <repository_url>
   cd <repository_directory>
   ```

2. **Install Dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the Application:**
   ```bash
   flutter run
   ```

#### Code Explanation

1. **`main.dart`:**
    - Entry point of the application.
    - Sets up the main `MyApp` widget.
    - Initializes the `ChangeNotifierProvider` for managing state using the `DataModel`.

2. **`DataModel.dart`:**
    - Manages the state for the application using the `ChangeNotifier` pattern.
    - Provides a `message` variable and a method (`setMessage`) to update it, triggering a UI update.

3. **`LoginPage.dart`:**
    - Represents the login page.
    - Uses a `TextField` for the name, a `DropdownButtonFormField` for selecting a country, and an `ElevatedButton` for login.
    - Navigates to the home page on login button press.

4. **`HomePage.dart`:**
    - Displays the News Home Page with a list of news articles.
    - Uses the `ListView` to display three `Card` widgets, each representing a news article.
    - Each card has an image, a title, and a "Read More" button.
    - Navigates to the respective news page on the "Read More" button press.

5. **`NewsPage.dart`:**
    - Represents a single news article page.
    - Displays the title, image, and content of the news article.
    - Provides a button to navigate back to the Home Page.
    - Sends a message back to the Home Page using `Navigator.pop()`.

6. **Images:**
    - The `lib/images` directory contains images used in the news articles.

7. **`pubspec.yaml`:**
    - Specifies the dependencies for the project, including `flutter` and `provider`.

8. **`MultiProvider`:**
    - In `main.dart`, the `MultiProvider` widget is used to manage multiple providers, mainly the `DataModel` provider.

9. **Routing:**
    - The `routes` property in `MaterialApp` is used to define different routes for each page/screen in the application.

10. **Navigation:**
    - `Navigator.pushNamed` is used for navigating to different screens.
    - `Navigator.pop` is used to navigate back and pass data.

11. **UI Elements:**
    - Various Flutter UI elements such as `Scaffold`, `AppBar`, `Column`, `TextField`, `DropdownButtonFormField`, `ElevatedButton`, `Card`, `Image`, and `Text` are used to build the user interface.
