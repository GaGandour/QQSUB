import 'dart:io';

class AdHelperInicio {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111'; //teste: ca-app-pub-3940256099942544/6300978111
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/2934735716'; //teste
    } else {
      throw new UnsupportedError('Unsupported platform');
    }
  }
}

class AdHelperMenu {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111'; //teste: ca-app-pub-3940256099942544/6300978111
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/2934735716'; //teste
    } else {
      throw new UnsupportedError('Unsupported platform');
    }
  }
}

class AdHelperGabaritado {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111'; //teste: ca-app-pub-3940256099942544/6300978111
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/2934735716'; //teste
    } else {
      throw new UnsupportedError('Unsupported platform');
    }
  }
}

class AdHelperQuestao {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111'; //teste: ca-app-pub-3940256099942544/6300978111
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/2934735716'; //teste
    } else {
      throw new UnsupportedError('Unsupported platform');
    }
  }
}
