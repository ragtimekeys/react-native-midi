
# react-native-midi

## Getting started

`$ npm install react-native-midi --save`

### Mostly automatic installation

`$ react-native link react-native-midi`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-midi` and add `RNMidi.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNMidi.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNMidiPackage;` to the imports at the top of the file
  - Add `new RNMidiPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-midi'
  	project(':react-native-midi').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-midi/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-midi')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNMidi.sln` in `node_modules/react-native-midi/windows/RNMidi.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Midi.RNMidi;` to the usings at the top of the file
  - Add `new RNMidiPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNMidi from 'react-native-midi';

// TODO: What to do with the module?
RNMidi;
```
  