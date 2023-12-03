import {
  requireNativeComponent,
  UIManager,
  Platform,
  type ViewStyle,
  type NativeSyntheticEvent,
} from 'react-native';

const LINKING_ERROR =
  `The package 'react-native-mask-native' doesn't seem to be linked. Make sure: \n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo Go\n';

type MaskNativeProps = {
  value: string;
  onChangeValue?: (event: NativeSyntheticEvent<{ value: string }>) => void;
  maskType: 'cpf';
  style: ViewStyle;
};

const ComponentName = 'MaskNativeView';

export const MaskNativeView =
  UIManager.getViewManagerConfig(ComponentName) != null
    ? requireNativeComponent<MaskNativeProps>(ComponentName)
    : () => {
        throw new Error(LINKING_ERROR);
      };
