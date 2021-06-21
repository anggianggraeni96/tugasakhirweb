<?php 
include 'koneksi.php';

$nama = $_POST['nama'];
$sandi = md5($_POST['sandi']);

$login = mysqli_query($koneksi, "SELECT * FROM jemaat where username='$nama' and password='$sandi'");
$cek = mysqli_num_rows($login);

if($cek > 0){
	session_start();
	$_SESSION['nama'] = $nama;
	$_SESSION['status'] = "login";
	header("location:daftaribadah.php");
}else{
	header("location:loginJemaat.php?pesan=gagal");	
}
?>