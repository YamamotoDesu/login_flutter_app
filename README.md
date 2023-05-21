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
