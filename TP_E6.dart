class LogRekamMedis {
  void catat() => print("Menulis log perkembangan detak jantung pasien...");
}

class KamarInap {
  String nomorKamar;

  late LogRekamMedis logHarian = LogRekamMedis();
  KamarInap(this.nomorKamar) {
    print("Kamar $nomorKamar diaktifkan. Buku rekam medis otomatis dibuat.");
  }

  void kunjunganDokter() {
    print("\nDokter mengunjungi Kamar $nomorKamar.");
    logHarian.catat();
  }
}

void main() {
  var kamar202 = KamarInap("202");
  kamar202.kunjunganDokter();
  // Kesimpulan pada soal ini adalah:
  // Program ini menunjukkan bahwa setiap kamar inap memiliki log rekam medis sendiri yang 
  // dibuat secara otomatis saat kamar diaktifkan. 
  // Ketika dokter mengunjungi kamar, log rekam medis tersebut digunakan untuk mencatat perkembangan pasien. 
  // Ini menggambarkan konsep komposisi, di mana KamarInap memiliki LogRekamMedis sebagai bagian dari dirinya.
}