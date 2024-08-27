 
# Clean Code Architecture

We're using Clean Code Architecture to ensure our app is scalable, maintainable, and testable. Here's an overview of our file structure:

```
lib/
├── core/
│   ├── constants/
│   ├── resources/
│   ├── services/
│   └── utils/
├── app/
|    ├── data/
|    │   ├── datasources/
|    │   ├── models/
|    │   └── repositories/
|    ├── domain/
|    │   ├── entities/
|    │   ├── repositories/
|    │   └── usecases/
|    ├── presentation/
|    │   ├── ui/
|    │   ├── shared/
|    |   │   ├── widgets/
|    |   │   ├── theme/
|    |   │   ├── routes/
|    |   │   ├── shared/
└── main.dart
```

- `core/`: Contains app-wide utilities, constants, and configurations.
- `data/`: Handles data operations (API calls, database interactions).
- `domain/`: Defines business logic and entities.
- `presentation/`: Manages UI components and state.

> [!question] Where to start?  
> 👉 Start form `main.dart`.


# Responsive Builder

To ensure responsiveness and adaptability of the app please be introduced with a light weight flutter package `responsive_builder`. With this you will easily work with mobile, tablet and desktop device of various sizes (small, medium, large and extra large).

**Features it introduces are:**
- Orientation Layout
- Responsive Builder
- Screen Type Layout
- Responsive Sizing


# GetX State Management and Routing

We're using GetX for state management and routing. Here are some key points:

1. Controllers: Place controllers in `app/presentation/controllers/x_controller.dart`.
2. Dependency Injection: Use `Get.put()` or `Get.lazyPut()` for dependency injection and put it in `app/presentation/controllers/x_binding.dart.
3. Reactive State Management: Use `Rx` variables and `.obs` for reactive programming.
	- *Example*: `Rx<String> text = "".obs;`
4. Navigation: Use `Get.to()`, `Get.off()`, etc., for navigation.

Example of a GetX controller:

`app/presentation/controllers/home_controller.dart`
```dart
class HomeController extends GetxController {
  RxInt count = 0.obs;
  
  void increment() => count++;
}
```

Add Binding in 
`app/presentation/shared/bindings/home_binding.dart`:
```dart
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeScreenController());
  }
}
```

For routing, define your routes in `app/presentation/shared/routes/app_pages.dart`:
```dart
class AppPages {
  static final routes = [
    GetPage(
      name: '/home',
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    // Add more routes here
  ];
}
```
Certainly. I'll add a section to the README specifically about GetX controllers. Here's an expanded version of the README with more details on GetX controllers:


## GetX Controllers

Controllers are a crucial part of the GetX ecosystem. They manage the state and business logic of your app.

1. Creating a Controller:
   - Place controllers in `lib/presentation/controllers/`.
   - Extend the `GetxController` class.

```dart
class HomeController extends GetxController {
  // Controller logic here
}
```

2. State Management:
   - Use `Rx` types for reactive programming.
   - Prefix variables with `Rx` or use `.obs` for primitive types.

```dart
class HomeController extends GetxController {
  RxInt count = 0.obs;
  RxString name = 'John Doe'.obs;
  Rx<User> user = User().obs;

  void increment() => count++;
  void updateName(String newName) => name.value = newName;
  void updateUser(User newUser) => user.value = newUser;
}
```

3. Lifecycle Methods:
   - `onInit()`: Called when the controller is created.
   - `onReady()`: Called after `onInit()` when the widget is rendered on the screen.
   - `onClose()`: Called when the controller is removed from memory.

```dart
class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // Initialize resources
  }

  @override
  void onReady() {
    super.onReady();
    // Called after onInit()
  }

  @override
  void onClose() {
    // Cleanup resources
    super.onClose();
  }
}
```

4. Using Controllers in UI:
   - Use `Get.put()` to inject a controller.
   - Use `GetX` or `Obx` widgets for reactive UI updates.

```dart
class HomePage extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Obx(() => Text('Count: ${controller.count}')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
```

5. Dependency Injection:
   - Use `Get.put()` for immediate injection.
   - Use `Get.lazyPut()` for lazy loading.
   - Use `Get.find()` to retrieve an instance.

```dart
// In your binding class or initial route
Get.put(HomeController());

// Lazy loading
Get.lazyPut(() => SettingsController());

// Finding an instance
final homeController = Get.find<HomeController>();
```

Remember to keep your controllers focused on a single responsibility and avoid making them too large. If a controller is growing too big, consider splitting it into multiple controllers.


# Isar Database Management

We're using Isar for local data persistence. Here's how to work with it:

1. Define your models in `lib/data/models/` and annotate them with `@collection`.
2. Initialize Isar in `main.dart`:

```dart
final isar = await Isar.open([YourModelSchema]);
```

3. Perform database operations in your repositories:

```dart
class UserRepository {
  final Isar isar;

  UserRepository(this.isar);

  Future<void> saveUser(User user) async {
    await isar.writeTxn(() async {
      await isar.users.put(user);
    });
  }

  Future<User?> getUser(int id) async {
    return await isar.users.get(id);
  }
}
```

Remember to close the Isar instance when it's no longer needed:

```dart
await isar.close();
```

---

For more detailed information on these topics, please refer to the official documentation:

- [Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
- [Responsive Builder](https://pub.dev/packages/responsive_builder).
- [GetX Package](https://pub.dev/packages/get)
- [Isar Database](https://isar.dev/tutorials/quickstart.html)

If you have any questions or need further clarification, please don't hesitate to ask the team lead.

Happy coding!
