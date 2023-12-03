import React, { useState } from 'react';

import { StyleSheet, View, TextInput } from 'react-native';
import { MaskNativeView } from 'react-native-mask-native';

export default function App() {
  const [value, setValue] = useState('')

  console.log(value, 'value')

  return (
    <View style={styles.container}>
      <MaskNativeView
        value={value}
        onChangeValue={(e) => setValue(e.nativeEvent.value)}
        maskType={'cpf'}
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
