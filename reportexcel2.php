<?php
//Menambahkan library PhpSpreadsheet dan koneksi ke database
include('koneksi.php');
require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

//inisiasi variable
$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();
//mengatur isi tabel
$sheet->setCellValue('A1', 'Nomor');
$sheet->setCellValue('B1', 'Nama Pendaftar');
$sheet->setCellValue('C1', 'Nomor HP');
$sheet->setCellValue('D1', 'Jumlah Anggota');

//query ke database
$query = mysqli_query($koneksi,"SELECT * FROM sesi_2");
$i = 2;
$no = 1;
//mengambil data dari database dimasukkan kedalam sheet
while($row = mysqli_fetch_array($query))
{
    $sheet->setCellValue('A'.$i, $no++);
    $sheet->setCellValue('B'.$i, $row['nama']);
    $sheet->setCellValue('C'.$i, $row['no_hp']);
    $sheet->setCellValue('D'.$i, $row['jumlah']);
    $i++;
}

//membuat style border tabel
$styleArray = [
            'borders'=> [
                'allBorders'=> [
                    'borderStyle'=> \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                ],
            ],
        ];
$i = $i - 1;
$sheet->getStyle('A1:D'.$i)->applyFromArray($styleArray);

//menyimpan data pada file xlsx
$writer = new Xlsx($spreadsheet);
$writer->save('Report Pendaftar Sesi1.xlsx');

header ('location:admin2.php');
?>