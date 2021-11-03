import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  // #region Basic opsætning (loading og darkMode)
  /// Om appen skal køre i darkmode
  bool darkMode;
  /// Definerer om appen er igang med at starte/hente listen med sider
  bool isLoading;

  AppState({
    this.isLoading = false,
    this.darkMode = false,
  });

  /// Opretter en ny AppState, som er under opstart
  factory AppState.loading() => new AppState(isLoading: true);

  Future<void> setDarkMode(bool val) async {
    this.darkMode = val;
    // await this._store.saveBool(this.storageName["darkMode"], val);
  }
  // #endregion

  String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

  bool signin = false;
  void signIn() {
    this.signin = true;
  }
  void signIOut() {
    this.signin = false;
  }
  bool isSignedIn() {
    return this.signin;
  }
}