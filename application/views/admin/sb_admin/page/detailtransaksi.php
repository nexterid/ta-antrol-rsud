		<style>
		#invoice{
			border: 2px solid lavender;
			width:100%;
		}
		
		#invoice h1{
			background: #006644;
			color: white;
		}
		
		#invoice th{
			color: white;
		}
		
		#invoice td{
			color: black;
		}
		</style>
    	<div id="invoice">
		<h1>Checkout Your Data Orders :</h1>
			<p>	
			<br>
				<table style="width:70%" border="0px">
					<tr>
						<td>Full Name </td><td>:</td><td><?php echo $pembeli->nama?></td>
					</tr>
					<tr>
						<td>Address </td><td>:</td><td><?php echo $pembeli->alamat?></td>
					</tr>
					<tr>
						<td>Phone Number </td><td>:</td><td><?php echo $pembeli->no_telpon?></td>
					</tr>
					<tr>
						<td>Email </td><td>:</td><td><?php echo $pembeli->email?></td>
					</tr>
					<tr>
						<td>Destination </td><td>:</td><td><?php echo $kota->kota?></td>
					</tr>
				</table>
			</p>
			<br><br>
			<p>
				No. order : <?php echo $pembeli->id_transaksi?><br>
				<table style="width:100%; border:none;" border="1px" cellpadding="10px" cellspacing="3">
					<tr bgcolor="#006644">
						<th>No</th>
						<th>Product Name</th>
						<th>Weight</th>
						<th>QTY</th>
						<th>Price</th>
						<th>Total Weight</th>
						<th>Total</th>
					</tr>
					
					<?php $i = 1; $berto=0; $harto=0; ?>
					<?php foreach ($produk->result() as $items): ?>
					<tr align="center">
						<td><?php echo $i ?></td>
						<td><?php echo $items->nama_produk ?></td>
						<td><?php echo $items->berat ?></td>
						<td><?php echo $items->jumlah_produk ?></td>
						<td>Rp <?php echo number_format($items->harga,"0",",",".") ?></td>
						<td><?php $berto=($berto + ($items->jumlah_produk * $items->berat));echo ($items->jumlah_produk* $items->berat) ?> Kg</td>
						<td>Rp <?php $harto=($harto + ($items->jumlah_produk * $items->harga_total));
								echo number_format($items->harga_total,"0",",",".") ?></td>
					</tr>
					
					<?php
					$i++;
					endforeach;
					?>
					<tr>
						<td colspan="6" align="right"> Shipping Charge : </td>
						<td>Rp <?php echo number_format($kota->harga,"0",",",".") ?> /Kg</td>
					</tr>
					<tr style="border:none">
						<td colspan="6" align="right"> Total Weight : </td>
						<td><?php echo round($berto) ?> Kg</td>
					</tr>
					<tr>
						<td colspan="6" align="right"> Total Shipping Charge : </td>
						<td>Rp <?php echo number_format(($kota->harga*round($berto)),"0",",",".") ?> /Kg</td>
					</tr>
					<tr>
						<td colspan="6" align="right"> Total Payment : </td>
						<td><b><u>Rp <?php echo number_format($pembeli->total_bayar,"0",",",".") ?></u></b></td>
					</tr>
				</table>
			</p>
			<p>
			<br>
				<table style="width:70%" border="0px">
					<tr>
						<td>Untuk pembayaran silahkan transfer An Dzakiyyah </td>
					</tr>
					<tr>
						<td>BCA </td><td>:</td><td>99973645</td>
					</tr>
					<tr>
						<td>Mandiri </td><td>:</td><td>625342314253647</td>
					</tr>
					<tr>
						<td>BNI </td><td>:</td><td>126435327</td>
					</tr>
				</table></p>
    	</div>