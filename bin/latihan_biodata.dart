// ignore_for_file: avoid_print

class Mahasiswa {
  String nama;
  String nim;
  String prodi;

  Mahasiswa(this.nama, this.nim, this.prodi);

  void tampilkan() {
    print('=== Data Class Mahasiswa ===');
    print('Nama  : $nama');
    print('NIM   : $nim');
    print('Prodi : $prodi');
  }
}

void main() {
  const String nama = 'Muhammad Hikmal Fadian';
  const String nim = '241080200069';
  const String prodi = 'Informatika';
  const int semester = 5;
  const String kota = 'Pasuruan';
  const bool aktif = true;
  final List<String> hobi = ['Coding', 'Desain UI/UX', 'Meracik Parfum'];
  String? panggilan;

  print('Nama: $nama');
  print('NIM: $nim');
  print('Semester: $semester, aktif: $aktif');
  print('Kota: $kota');
  print('Hobi: ${hobi.join(', ')}');
  print('Panggilan: ${panggilan ?? "Belum diisi"}');
  print(sapa(nama));
  print('');

  var mhs = Mahasiswa(nama, nim, prodi);
  mhs.tampilkan();
}

String sapa(String nama) => 'Halo, saya $nama.';