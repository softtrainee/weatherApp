# Project Setup Instructions

To run this Flutter project, please follow the instructions below:

## Prerequisites

1. Ensure that you have Flutter SDK installed on your machine. If not, please refer to the official Flutter documentation for installation instructions: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)

2. Make sure you have a compatible development environment set up for Flutter, including a code editor such as Visual Studio Code or Android Studio.

3. Ensure that you have a stable internet connection for fetching dependencies and accessing external APIs.

## Project Setup

1. Clone the project repository to your local machine using the following command:

   ```bash
   git clone https://github.com/madhanKMani/weather_app.git
   ```

2. Open the project in your preferred code editor.

3. Install the project dependencies by running the following command in the project's root directory:

   ```bash
   flutter pub get
   ```

## API Integration

1. Obtain an API key from OpenWeather. You can sign up for a free account and generate an API key by visiting the [OpenWeather website](https://openweathermap.org/).

2. Already i have added my demo Secret Key for this project, So you don't want to ad yours.

## Running the Project

1. Connect your mobile device or emulator to your development environment.

2. Ensure that your device/emulator has debugging enabled.

3. Run the following command in the project's root directory to launch the application:

   ```bash
   flutter run
   ```

   This command will build and deploy the Flutter application to your connected device/emulator.

4. The application should now be running on your device/emulator, displaying the weather information based on your current latitude and longitude.

---

<br><br>
<br>

# **Technical Stack**

This provides an overview of the project and its key components. The project utilizes the MVVM architecture along with the Flutter_riverpod state management library to facilitate efficient and scalable development. Additionally, it leverages the Freezed library for immutable state management and Json Serialization for parsing API responses. The integration with OpenWeather API enables access to weather reports.

## Architecture

The project follows the Model-View-ViewModel (MVVM) architectural pattern, which promotes separation of concerns and enhances maintainability. MVVM allows for a clear separation between the data models (Model), user interface (View), and the logic (ViewModel) that binds them together. This architecture provides a robust foundation for building complex and scalable applications.

## State Management

Flutter_riverpod is employed as the state management library in this project. It offers a simple and intuitive approach to managing application state, facilitating seamless communication between different components. By utilizing Flutter_riverpod, the project benefits from efficient state propagation and enhanced reactivity, resulting in a smoother user experience.

## Immutable State Management

Freezed, a powerful code generation library, is utilized for immutable state management. With Freezed, data models and classes can be easily generated with immutable properties, ensuring that state objects remain unchangeable once created. This approach guarantees consistency and prevents unintended modifications, contributing to more predictable and reliable application behavior.

## API Integration

The project incorporates the HTTP library to facilitate seamless communication with external APIs. It enables the application to send requests and receive responses efficiently, ensuring smooth integration with the OpenWeather API. The OpenWeather API serves as the source of weather data for the project.

## OpenWeather API

The weather report API utilized in this project is sourced from OpenWeather. The OpenWeather API offers a comprehensive set of features and endpoints for accessing weather information. In this project, two major APIs provided by OpenWeather are utilized:

1. Current Weather: This API allows retrieval of real-time weather information based on the provided latitude and longitude coordinates. By utilizing the current latitude and longitude, the application fetches the most up-to-date weather data for the specified location.

2. Upcoming Weather: This API provides weather forecasts for the future, based on the provided latitude and longitude coordinates. By utilizing the same latitude and longitude, the application can retrieve forecasted weather conditions, allowing users to plan ahead.

By leveraging the OpenWeather API, the project ensures accurate and reliable weather information, enhancing the overall user experience.

## Libraries Used

The project incorporates the following libraries:

- **http: ^0.13.3**: This library enables efficient HTTP communication between the application and external APIs, facilitating seamless data exchange.

- **geolocator: ^8.0.1**: Geolocator provides location-related functionalities, allowing the application to retrieve the device's current latitude and longitude coordinates.

- **cached_network_image: ^3.0.0**: This library offers an efficient way to cache and load network images, optimizing the performance of image loading in the application.

- **intl: ^0.17.0**: The intl library provides internationalization and localization support, enabling the application to adapt to different languages and regions.

- **build_runner: ^2.1.10**: Build Runner is a build system tool that generates code and assets during the build process, automating repetitive tasks and improving development efficiency.

- **json_annotation: ^4.4.0**: This library provides annotations for generating JSON serialization and deserialization code, simplifying the handling of JSON data in the application.

- **json_serializable: ^6.1.6**: Json Serializable is a code generation package that generates the necessary code for JSON serialization and deserialization based on annotated classes and models.

- **flutter_riverpod: ^2.3.6**: Flutter_riverpod is a state management library that offers a simple and intuitive approach to managing application state, facilitating seamless communication between different components.

- **freezed_annotation: ^2.2.0**: Freezed Annotation is a code generation library that simplifies the process of creating immutable data models and classes, ensuring consistency and preventing unintended modifications.

These libraries provide essential functionalities and enhancements, enabling the project to deliver a robust and feature-rich application.

# Project Demo

![](/weather_app_task_demo.gif)
