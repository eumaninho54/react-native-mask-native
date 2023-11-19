import React, { useState } from 'react';

import { StyleSheet, View } from 'react-native';
import { MaskNativeView } from 'react-native-mask-native';

export default function App() {
  const [value, setValue] = useState('testando')

  return (
    <View style={styles.container}>
      <MaskNativeView
        value={value}
        onChangeValue={({ nativeEvent: { value } }) => setValue(value)}
        //color="#32a852"
        style={styles.box}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 80,
    height: 60,
    marginVertical: 20,
    backgroundColor: 'red'
  },
});
