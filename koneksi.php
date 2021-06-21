<?php
//konfigurasi database
$servername = "localhost"; //inisialisasi servername : localhost
$username ="root"; //inisialisasi username : root
$password = ""; //inisialisasi password : (Tidak ada password)
$dbname = "sigereja"; //inisialisasi dbname (db yang digunakanan) : sigereja

//perintah untuk akses database
$koneksi = mysqli_connect($servername,$username,$password,$dbname);

//periksa koneksi
if(!$koneksi){
    die("Koneksi gagal: ".mysqli_connect_error());
}
?>