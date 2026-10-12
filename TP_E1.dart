import 'dart:io';

class Pasien {
  String nama;
  int _umur;

  Pasien(this.nama, this._umur);
  int get bacaUmur => _umur;

  set ubahUmur(int nilai) {
    if (nilai >= 0) {
      _umur = nilai;
    } else {
      print("Error: Umur tidak bisa bernilai negatif!");
      _umur = 0;
    }
  }
}

void main() {
  print("=== PENDAFTARAN PASIEN RSUD ===");
  stdout.write("Masukkan Nama Pasien: ");
  String inputNama = stdin.readLineSync() ?? "";

  stdout.write("Masukkan Umur: ");
  int inputUmur = int.parse(stdin.readLineSync() ?? "0");

  var pasienBaru = Pasien(inputNama, 0);

  pasienBaru.ubahUmur = inputUmur;

  print("\n--- DATA TERSIMPAN ---");
  print("Nama: ${pasienBaru.nama}, Umur: ${pasienBaru.bacaUmur} tahun");
}
  // Kesimpulan pada soal ini adalah:
  // Program ini menunjukkan penggunaan getter dan setter untuk mengakses dan 
  // memodifikasi atribut private.