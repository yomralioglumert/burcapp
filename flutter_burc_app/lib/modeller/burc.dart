class Burc {
  final String _burcAdi;
  final String _burcTarihi;
  final String _burcDetayi;
  final String _burc_KucukResim;
  final String _burcBuyukResim;
  get burcAdi => this._burcAdi;
  get burcTarihi => this._burcTarihi;
  get burcDetayi => this._burcDetayi;
  get burc_KucukResim => this._burc_KucukResim;
  get burcBuyukResim => this._burcBuyukResim;

  Burc(this._burcAdi, this._burcTarihi, this._burcDetayi, this._burc_KucukResim,
      this._burcBuyukResim);

  @override
  String toString() {
    return '$_burcAdi - $_burcBuyukResim';
  }
}
