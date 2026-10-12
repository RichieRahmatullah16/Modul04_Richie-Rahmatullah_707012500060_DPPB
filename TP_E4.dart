class PegawaiRS {
  String nama;

  PegawaiRS(this.nama);

  void bekerja() => print("$nama melakukan tugas rumah sakit.");
}

class Dokter extends PegawaiRS {
  String spesialisasi;

  Dokter(super.nama, this.spesialisasi);

  @override
  void bekerja() {
    print("Dokter $nama sedang memeriksa pasien di Poli $spesialisasi.");
  }
}

class Perawat extends PegawaiRS {
  String shift;

  Perawat(super.nama, this.shift);

  @override
  void bekerja() {
    print("Perawat $nama sedang bertugas pada shift $shift.");
  }
}

void main() {
  var dokter1 = Dokter("Budi", "Saraf");
  dokter1.bekerja();
  var perawat1 = Perawat("Siti", "Malam");
  perawat1.bekerja();
  // Kesimpulan pada soal ini adalah:
  // Melalui Polimorfisme, kita dapat memanggil metode bekerja() pada objek Dokter dan Perawat, 
  // meskipun keduanya memiliki implementasi yang berbeda. 
  // Ini memungkinkan kita untuk menggunakan objek dari kelas turunan melalui referensi kelas induk, 
  // sehingga meningkatkan fleksibilitas dan keterbacaan kode.
}