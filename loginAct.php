<?php 
include 'koneksi.php';

$nama = $_POST['nama'];
$sandi = md5($_POST['sandi']);

$login = mysqli_query($koneksi, "SELECT * FROM admin where username='$nama' and password='$sandi'");
$cek = mysqli_num_rows($login);

if($cek > 0){
	session_start();
	$_SESSION['username'] = $nama;
	$_SESSION['status'] = "login";
	header("location:admin.php");
}else{
	header("location:login.php?pesan=gagal");	
}
?>