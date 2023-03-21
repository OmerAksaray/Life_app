import 'package:life_expectatation_app/user_data.dart';

class Calculating {
  UserData? _userData;
  Calculating(this._userData);
  int? hesaplama() {
    double sonuc;

    sonuc = 90 + _userData!.spor! - _userData!.icilenSigara!;
    sonuc = sonuc + (_userData!.uzunluk! / _userData!.weight!);
    _userData!.seciliCinsiyet == 'Woman'
        ? sonuc = sonuc + 5
        : sonuc = sonuc - 2;

    return sonuc.toInt();
  }
}
