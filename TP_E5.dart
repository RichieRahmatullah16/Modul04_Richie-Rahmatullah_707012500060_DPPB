class Pasien {
  String nama;
  Pasien(this.nama);
}

class RuangTunggu {
  String namaRuangan;

  List<Pasien> antreanPasien = [];
  RuangTunggu(this.namaRuangan);

  void tambahPasien(Pasien pasienBaru) {
    antreanPasien.add(pasienBaru);
    print("Pasien ${pasienBaru.nama} masuk ke antrean $namaRuangan.");
  }
}

void main() {
  var pasien1 = Pasien("Caca");
  var pasien2 = Pasien("Doni");

  var poliGigi = RuangTunggu("Poli Gigi");

  poliGigi.tambahPasien(pasien1);
  poliGigi.tambahPasien(pasien2);

  // Kesimpulan pada soal ini adalah:
  // Program ini menunjukkan bahwa setiap ruang tunggu 
  // memiliki daftar antrean pasien sendiri.
}