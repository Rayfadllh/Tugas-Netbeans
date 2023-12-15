/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Pert1;

import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author HP
 */
public class LatihanSoal {
  
    public static void main(String[] args) {
        ArrayList<Mahasiswa> daftarMahasiswa = new ArrayList<>();
        Scanner input = new Scanner(System.in);

        while (true) {
            System.out.println("\nMenu:");
            System.out.println("1. Input Data");
            System.out.println("2. Tampil Data");
            System.out.println("3. Keluar");

            System.out.print("Pilih menu (1/2/3): ");
            int pilihan = input.nextInt();

            switch (pilihan) {
                case 1:
                    // Input Data
                    System.out.print("Masukkan NIM: ");
                    String nim = input.next();
                    System.out.print("Masukkan Nama: ");
                    String nama = input.next();
                    System.out.print("Masukkan Nilai UTS: ");
                    double nilaiUts = input.nextDouble();
                    System.out.print("Masukkan Nilai UAS: ");
                    double nilaiUas = input.nextDouble();

                    Mahasiswa mahasiswa = new Mahasiswa(nim, nama, nilaiUts, nilaiUas);
                    daftarMahasiswa.add(mahasiswa);
                    break;

                case 2:
                    // Tampil Data
                    if (daftarMahasiswa.isEmpty()) {
                        System.out.println("Belum ada data mahasiswa yang diinput.");
                    } else {
                        System.out.println("Daftar Data Mahasiswa:");
                        for (Mahasiswa mhs : daftarMahasiswa) {
                            System.out.println("NIM: " + mhs.getNim());
                            System.out.println("Nama: " + mhs.getNama());
                            System.out.println("Nilai UTS: " + mhs.getNilaiUts());
                            System.out.println("Nilai UAS: " + mhs.getNilaiUas());
                            System.out.println("Nilai Akhir: " + mhs.hitungNilaiAkhir());
                            System.out.println("Grade: " + mhs.hitungGrade());
                            System.out.println();
                        }
                    }
                    break;

                case 3:
                    // Keluar
                    System.out.println("Terima kasih telah menggunakan program ini.");
                    System.exit(0);

                default:
                    System.out.println("Pilihan tidak ada. Silakan pilih menu yang benar.");
            }
        }
    }
}

