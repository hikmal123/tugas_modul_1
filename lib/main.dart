import 'package:flutter/material.dart';

void main() => runApp(const BiodataApp());

class BiodataApp extends StatelessWidget {
  const BiodataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Biodata Diri',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal, // Warna tema sudah disesuaikan
        ),
      ),
      home: const BiodataPage(),
    );
  }
}

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  @override
  Widget build(BuildContext context) {
    const nama = 'Muhammad Hikmal Fadian';
    const nim = '241080200069';
    const prodi = 'Informatika';
    const semester = 5;
    const kota = 'Pasuruan';
    const email = 'hikmal@example.com';
    const hobi = ['Web Development', 'UI/UX Design', 'Mechanical Keyboard', 'Fragrance'];
    const keahlian = ['Flutter & Dart', 'Python', 'JavaScript', 'WordPress', 'Figma'];

    return Scaffold(
      appBar: AppBar(title: const Text('Biodata Diri')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: CircleAvatar(
                        radius: 42,
                        // Jika memakai foto profil lokal, ganti child: Text(...) dengan:
                        // backgroundImage: AssetImage('assets/images/profil.jpg'),
                        child: Text(
                          'MH',
                          style: TextStyle(fontSize: 28),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: Text(
                        nama,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text('NIM: $nim'),
                    const SizedBox(height: 8),
                    const Text('Program studi: $prodi'),
                    const SizedBox(height: 8),
                    const Text('Semester: $semester'),
                    const SizedBox(height: 8),
                    const Text('Kota: $kota'),
                    const SizedBox(height: 8),
                    const Text('Email: $email'),
                    const Divider(height: 32),
                    const Text(
                      'Hobi',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: hobi
                          .map((item) => Chip(label: Text(item)))
                          .toList(),
                    ),
                    const SizedBox(height: 20),
                    // Informasi tambahan sesuai syarat Tugas Individu
                    const Text(
                      'Keahlian',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: keahlian
                          .map((skill) => Chip(label: Text(skill)))
                          .toList(),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Tentang saya',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Saya mahasiswa Informatika Universitas Muhammadiyah Sidoarjo '
                          'yang antusias mempelajari pengembangan aplikasi web dan mobile '
                          'menggunakan Flutter serta merancang antarmuka pengguna.',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}