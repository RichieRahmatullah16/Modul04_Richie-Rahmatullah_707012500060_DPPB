class PegawaiRS {
  String nama;
  String idPegawai;

  PegawaiRS(this.nama, this.idPegawai);

  void info() => print("Pegawai: $nama (ID: $idPegawai)");
}

class Dokter extends PegawaiRS {
  String spesialisasi;

  Dokter(String nama, String idPegawai, this.spesialisasi):
  super(nama, idPegawai);
}

class Perawat extends PegawaiRS {
  String shift;

  Perawat(String nama, String idPegawai, this.shift) : 
  super(nama, idPegawai);

  @override
  void info() {
    print("Perawat $nama (ID: $idPegawai) sedang bertugas pada shift $shift.");
  }
}
void main() {
  var dokter1 = Dokter("Dr. Andi", "D-001", "Penyakit Dalam");
  dokter1.info();

  // Kesimpulan pada soal ini adalah:
  // konsep pewarisan (inheritance) memungkinkan kelas Dokter dan Perawat untuk 
  // mewarisi atribut dan metode dari kelas PegawaiRS, sehingga mengurangi duplikasi kode dan 
  // meningkatkan keterbacaan.
}