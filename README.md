# @routemax/react-native-floating-bubble

> A React Native library for creating floating bubbles (chat heads) on Android. This is a fork of [Hybriteq's React Native Floating Bubble](https://github.com/hybriteq/react-native-floating-bubble) repository and is compatible with React Native v0.73.11+.

A simple Facebook Chat Head like bubble for React Native. Special thanks to [bubble-for-android](https://github.com/txusballesteros/bubbles-for-android) because this is just a React Native wrapper for that library.

## Features

- ✅ Create floating overlay bubbles on Android
- ✅ Customizable bubble position
- ✅ Event listeners for bubble interactions
- ✅ Permission handling for system overlay
- ✅ TypeScript support
- ✅ Easy integration with React Native apps

## Preview

![Preview](https://raw.githubusercontent.com/fab-it-hub/react-native-floating-bubble/main/preview.gif)

## Installation

```bash
npm install @routemax/react-native-floating-bubble
```

or

```bash
yarn add @routemax/react-native-floating-bubble
```

### Android Setup

Add the following permission to your `android/app/src/main/AndroidManifest.xml`:

```xml
<uses-permission android:name="android.permission.SYSTEM_ALERT_WINDOW" />
```

## Usage

### Basic Implementation

```javascript
import {
	reopenApp,
	initialize,
	isBubbleOpen,
	checkPermission,
	requestPermission,
	showFloatingBubble,
	hideFloatingBubble,
} from "@routemax/react-native-floating-bubble";

// To display the bubble over other apps you need to get 'Draw Over Other Apps' permission from android.
// If you initialize without having the permission App could crash
requestPermission()
	.then(() => console.log("Permission Granted"))
	.catch(() => console.log("Permission is not granted"));

// Initialize bubble manager
initialize().then(() => console.log("Initialized the bubble manager"));

// Show Floating Bubble: x=10, y=10 position of the bubble
showFloatingBubble(10, 10).then(() => console.log("Floating Bubble Added"));

// Hide Floating Bubble
hideFloatingBubble().then(() => console.log("Floating Bubble Removed"));
```

### TypeScript Support

This package includes TypeScript definitions. All methods are properly typed:

```typescript
import FloatingBubble, { 
	showFloatingBubble, 
	hideFloatingBubble 
} from "@routemax/react-native-floating-bubble";

// All methods return promises and are properly typed
const isOpen: boolean = await FloatingBubble.isBubbleOpen();
await showFloatingBubble(50, 100); // x and y are optional with defaults
```

### Events

You can listen to bubble press and bubble remove events using **`DeviceEventEmitter`**.

Events: `floating-bubble-press`, `floating-bubble-remove`

```javascript
import { DeviceEventEmitter } from 'react-native';

DeviceEventEmitter.addListener("floating-bubble-press", (e) => {
	// What to do when user presses the bubble
	console.log("Bubble pressed");
});

DeviceEventEmitter.addListener("floating-bubble-remove", (e) => {
	// What to do when user removes the bubble
	console.log("Bubble removed");
});
```

### Change Bubble Icon

Place the icon file as `android/app/src/main/res/drawable/bubble_icon.png`

## Platform Support

- ✅ Android
- ❌ iOS (iOS doesn't support system overlay bubbles due to platform restrictions)

## Requirements

- React Native >= 0.73.11
- Android API level 23+ (for overlay permissions)

## Troubleshooting

### Permission Issues
Make sure to request overlay permission before initializing the bubble manager:

```javascript
const hasPermission = await checkPermission();
if (!hasPermission) {
	await requestPermission();
}
await initialize();
```

### App Crashes
If your app crashes when showing the bubble, ensure you have:
1. Added the SYSTEM_ALERT_WINDOW permission to AndroidManifest.xml
2. Requested and received overlay permission from the user
3. Called `initialize()` before `showFloatingBubble()`
