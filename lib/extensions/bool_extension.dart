extension BoolExtension on bool {
  // bool値をイエス/ノーの文字列に変換
  String toYesNo() {
    return this ? 'Yes' : 'No';
  }

  // bool値をオン/オフの文字列に変換
  String toOnOff() {
    return this ? 'On' : 'Off';
  }

  // bool値を有効/無効の文字列に変換
  String toEnabledDisabled() {
    return this ? 'Enabled' : 'Disabled';
  }

  // bool値を1/0の整数に変換
  int toInt() {
    return this ? 1 : 0;
  }

  // bool値を反転させる
  bool get toggled => !this;
}
