# Web to Mobile App

Ionic app that generates Android and iOS apps for an existing web site.

## Pre requisites

- JDK 8 (Exactly 8). http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
- Android Studio
- Xcode
- Install this:
```
brew install node
brew upgrade node
brew install gradle
npm install -g cordova
npm install -g ionic
npm install -g
```

## Configure
```
./customize.sh
```
and ask all the questions.

Replace the following images for your app:
- resources/splash.png
- resources/android/icon.png
- resources/ios/icon.png

## Build:
```
./build.sh
```

## Run in Android emulator
```
./emulateAndroid.sh
```

## Run in iPhone emulator
```
./emulateIOS.sh
```

## Clean all data for start over
```
./clean.sh
```

## Deploy (For Android and iOS marketplaces)
https://ionicframework.com/docs/intro/deploying/

## License

The MIT license. See the bundled LICENSE file for details.
