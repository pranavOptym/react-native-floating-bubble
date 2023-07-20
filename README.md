# react-native-floating-bubble

> It is a fork of [Hybriteq's React Native Floating Bubble](https://github.com/hybriteq/react-native-floating-bubble) repository and is compatible with the newest `react-native v0.72.3`.

A simple Facebook Chat Head like bubble for react native. Special thanks to [bubble-for-android](https://github.com/txusballesteros/bubbles-for-android) because this is just react native wrapper for that library.

## Preview

![Preview](https://raw.githubusercontent.com/fab-it-hub/react-native-floating-bubble/main/preview.gif)

## Installation

```bash
yarn add @fabithub/react-native-floating-bubble
```

## Usage

### Methods

```javascript
import {
	reopenApp,
	initialize,
	isBubbleOpen,
	checkPermission,
	requestPermission,
	showFloatingBubble,
	hideFloatingBubble,
} from "@fabithub/react-native-floating-bubble";

// To display the bubble over other apps you need to get 'Draw Over Other Apps' permission from android.
// If you initialize without having the permission App could crash
requestPermission()
	.then(() => console.log("Permission Granted"))
	.catch(() => console.log("Permission is not granted"));

// Initialize bubble manage
initialize().then(() => console.log("Initialized the bubble mange"));

// Show Floating Bubble: x=10, y=10 position of the bubble
showFloatingBubble(10, 10).then(() => console.log("Floating Bubble Added"));

// Hide Floating Bubble
hideFloatingBubble().then(() => console.log("Floating Bubble Removed"));
```

### Events

You can listen to bubble press and bubble remove events using **`DeviceEventEmitter`**.

Events: `floating-bubble-press`, `floating-bubble-remove`

```javascript
DeviceEventEmitter.addListener("floating-bubble-press", (e) => {
	// What to do when user press the bubble
	console.log("Press Bubble");
});
DeviceEventEmitter.addListener("floating-bubble-remove", (e) => {
	// What to do when user removes the bubble
	console.log("Remove Bubble");
});
```

### Change Bubble Icon

Place the icon file as `android/app/src/main/res/drawable/bubble_icon.png`

## Contribute

If you want to contribute the source code is [here](https://github.com/fab-it-hub/react-native-floating-bubble).
