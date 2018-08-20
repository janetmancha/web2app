npm i
ionic cordova platform add android@7.1.0
ionic cordova resources --force android
ionic cordova platform add ios
ionic cordova resources --force ios
ionic build
