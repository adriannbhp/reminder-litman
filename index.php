<html>
	<head>
        <title>Reminder Aplikasi</title>
	</head>
	<body>
		<?php
			include "koneksi.php";
			$sekarang	=date("Y-m-d");
		?>
        <h3>Reminder Tanggal Jatuh Tempo Pengembalian Barang</h3>
		<p>Hari ini Tanggal: <?php echo $sekarang?></p>
		<table cellpadding="4" cellspacing="2">
			<thead>
				<tr bgcolor="#E5E5E5">
					<td>No</td>
					<td>Nomor Transaksi</td>
					<td>Nama</td>
					<td>Barang</td>
					<td>Jml</td>
					<td>Tgl. Harus kembali</td>
					<td>Jatuh Tempo</td>
				</tr>
			</thead>
			<tbody>
				<?php
					$no	=0;
					$query	=mysqli_query($conn, "SELECT * FROM tb_sewabarang WHERE tgl_kembali > '$sekarang' AND status IS NULL ORDER BY tgl_kembali");
					while($data	=mysqli_fetch_array($query)){
					$kembali	=new DateTime($data['tgl_kembali']);
					$lambat		=new DateTime($sekarang);
					$diff	=$lambat->diff($kembali);
					$no++
				?>
				<tr>
					<td><?php echo $no?></td>
					<td><?php echo $data['nomor']?></td>
					<td><?php echo $data['nama']?></td>
					<td><?php echo $data['barang']?></td>
					<td><?php echo $data['jumlah']?></td>
					<td><?php echo $data['tgl_kembali']?></td>
					<td><?php echo $diff->d." Hari"?></td>
				</tr>
				<?php
				}
				?>
			</tbody>
		</table>
	</body>
</html>
