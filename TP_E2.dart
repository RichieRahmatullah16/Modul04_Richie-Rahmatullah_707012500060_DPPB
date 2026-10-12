class KasirRSUD {
  String namaPetugas;
  double _totalPendapatan;

  KasirRSUD(this.namaPetugas, this._totalPendapatan);

  double get cekPendapatan => _totalPendapatan;

  set bayarTagihan(double nominal) {
    if (nominal > 0) {
    _totalPendapatan += nominal;
      print("Pembayaran Rp$nominal berhasil masuk ke sistem!");
    } else {
      print("Error: Nominal pembayaran tidak valid!");
    }
  }
}

void main() {
  var kasirShift1 = KasirRSUD("Siti", 0);
  print("Pendapatan Awal: Rp${kasirShift1.cekPendapatan}");

  kasirShift1.bayarTagihan = -50000;
  kasirShift1.bayarTagihan = 100000;

  print("Pendapatan Setelah Pembayaran: Rp${kasirShift1.cekPendapatan}");

  // Kesimpulan pada soal ini adalah:
  // Data penting ini bersifat private agar 
  // tidak bisa diubah secara langsung dari luar kelas.
}