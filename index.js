import { NativeModules } from "react-native";

const { RNFloatingBubble } = NativeModules;

export const reopenApp = () => RNFloatingBubble.reopenApp();
export const initialize = () => RNFloatingBubble.initialize();
export const isBubbleOpen = () => RNFloatingBubble.isBubbleOpen();
export const checkPermission = () => RNFloatingBubble.checkPermission();
export const requestPermission = () => RNFloatingBubble.requestPermission();
export const hideFloatingBubble = () => RNFloatingBubble.hideFloatingBubble();
export const showFloatingBubble = (x = 50, y = 100) =>
	RNFloatingBubble.showFloatingBubble(x, y);

export default {
	reopenApp,
	initialize,
	isBubbleOpen,
	checkPermission,
	requestPermission,
	showFloatingBubble,
	hideFloatingBubble,
};
