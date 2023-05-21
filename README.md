# login_flutter_app

## How to Create a Flutter Folder Structure for Maximum Efficiency | Coding with T
https://www.youtube.com/watch?v=iWsfGf_UEXE&t=0s

<img width="253" alt="スクリーンショット 2023-05-16 22 22 26" src="https://github.com/YamamotoDesu/login_flutter_app/assets/47273077/2a719cc0-ef33-4421-a8ed-84fa33d46150">


```
➜  login_flutter_app cd packages/
➜  packages flutter create --template package auth_repository
```


<img width="300" alt="スクリーンショット 2023-05-20 17 08 54" src="https://github.com/YamamotoDesu/login_flutter_app/assets/47273077/a2248b03-0204-41fe-af91-efff5e8f4ec5">

## [ How to create Flutter Native Splash Screen | Splash Screen Tutorial [2023]](https://www.youtube.com/watch?v=4Aawfl6yOg4)

https://github.com/YamamotoDesu/login_flutter_app/assets/47273077/063a0455-89e5-40e8-84f6-cd28a447bf46

```yml
dependencies:
  flutter_native_splash: ^2.2.19
  
flutter_native_splash:
  color: "#f7f6f1"
  color_dark: "#272727"
  image: assets/images/splash_images/splash-screen-image.png
  image_dark:  assets/images/splash_images/splash-screen-image.png

  android_12:
    background_color: "#f7f6f1"
    background_color_dark: "#272727"
    foreground_color: "#f7f6f1"
    foreground_color_dark: "#272727"
    image: assets/images/splash_images/splash-screen-image.png
    image_dark: assets/images/splash_images/splash-screen-image.png
 ```

```
➜  login_flutter_app git:(main) ✗ flutter pub run flutter_native_splash:crea
```

## [Flutter Splash Screen tutorial with animation | Splash Screen 2023](https://www.youtube.com/watch)

https://github.com/YamamotoDesu/login_flutter_app/assets/47273077/cba7db02-a569-457d-93bf-713c56ac3c41

splash_screen.dart
```dart
class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(() => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? 0 : -30,
              left: splashController.animate.value ? 0 : -30,
              child: const Image(
                image: AssetImage(
                  tSplashTopIcon,
                ),
              ),
            ),
          ),
          Obx(() => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 80,
              left: splashController.animate.value ? tDefaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 400),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tAppName,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text(
                      tAppTagLine,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(() => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 100 : 0,
              child: const Image(
                image: AssetImage(
                  tSplashImage,
                ),
              ),
            ),
          ),
          Obx(() => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 40 : 0,
              right: tDefaultSize,
              child: Container(
                width: tSplashContainerSize,
                height: tSplashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
```

splash_controller.dart
```dart
import 'package:get/get.dart';
import 'package:login_flutter_app/src/features/authentication/screens/authentications/screens/welcome/welcome/welcome_screen.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(const WelcomeScreen());
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const WelcomeScreen()));
  }
}
```

