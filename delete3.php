<?php
include 'koneksi.php';

// menyimpan data id kedalam variabel
$id = $_GET['id'];

// query SQL untuk insert data
$sql="delete from sesi_3 where nomor='$id'";
if (mysqli_query($koneksi, $sql)) {
    echo "<script>alert('Data Berhasil Dihapus!');history.go(-1);</script>";
} else {
    echo "Error: ".$sql."<br>".mysqli_error($koneksi);
}

//mengalihkan kehalaman utama
header ("location:admin.php");
?>