<?php $this->load->view ("user/header") ?>
<!--banner-->
<div class="banner-top">
	<div class="container">
		<h1>Shopping Cart</h1>
		<em></em>
		<h2><a href="index.html">Home</a><label>/</label>Shopping Cart</a></h2>
	</div>
</div>
<!--login-->
	<script>$(document).ready(function(c) {
					$('.close1').on('click', function(c){
						$('.cart-header').fadeOut('slow', function(c){
							$('.cart-header').remove();
						});
						});	  
					});
			   </script>
<script>$(document).ready(function(c) {
					$('.close2').on('click', function(c){
						$('.cart-header1').fadeOut('slow', function(c){
							$('.cart-header1').remove();
						});
						});	  
					});
			   </script>
			   <script>$(document).ready(function(c) {
					$('.close3').on('click', function(c){
						$('.cart-header2').fadeOut('slow', function(c){
							$('.cart-header2').remove();
						});
						});	  
					});
			   </script>
<div class="container">
	<div class="check-out">
	<div class="bs-example4" data-example-id="simple-responsive-table">
    <div class="table-responsive">
    	    <table class="table-heading simpleCart_shelfItem">
		  <tr>
			<th class="table-grid">Item</th>		
			<th>Prices</th>
			<th>QTY</th>
			<th>Explanation</th>
			<th>Subtotal</th>
			<th></th>
		  </tr>
		  
		  <?php $i = 1; ?>
		  <?php foreach ($this->cart->contents()as $items): ?>
		  <tr>
			<td class="ring-in"><a href="single.html" class="at-in"><img src="<?php echo base_url('assets/uploads/files/'.$items['options']['image']) ?>" class="img-responsive" alt=""></a>
			<div class="sed">
				<h5><a href="single.html"><?php echo $items['name'] ?></a></h5>
			</div>
			<div class="clearfix"> </div>
			</td>
			<td>Rp <?php echo $items['price'] ?></td>
			<td><?php echo $items['qty'] ?></td>
			<td class="item_price"><?php echo $items['options']['keterangan']?></td>
			<td class="item_price"><?php echo $items['subtotal'] ?></td>
			<td class="add-check">
				<form method="post" action="<?php echo base_url('index/hapus')?>">
					<input type="hidden" value="<?php echo $items['rowid']; ?>" name="id">
					<input type="submit" class="item_add hvr-skew-backward" value="Delete">
				</form>
			
			</td>
		  </tr>
		  <?php endforeach ?>
		  
	</table>
	</div>
	</div>
    </div>
	<div class="login">
			<form method="post" action="" >
			<div class="col-md-6 login-do">
			<div class="login-mail">
					<input type="text" name="nama" placeholder="Full Name" required="">
					<i  class="glyphicon glyphicon-user"></i>
				</div>
				<div class="login-mail">
					<input type="text" name="no_telpon" placeholder="Phone Number" required="">
					<i  class="glyphicon glyphicon-phone"></i>
				</div>
				<div class="login-mail">
					<input type="text" name="email" placeholder="Email" required="">
					<i  class="glyphicon glyphicon-envelope"></i>
				</div>
				<div class="login-mail">Destination :  
					<select name="id_kota">
					<?php foreach ($city->result() as $kota):?>
						<option value="<?php echo $kota -> id_kota?>"><?php echo $kota->kota?></option>
					<?php endforeach ?>
					</select>
				</div>
				<div class="login-mail">
					<input type="text" name="alamat" placeholder="Address" required="">
					<i class="glyphicon glyphicon-home"></i>
				</div>
				<label class="hvr-skew-backward">
					<input type="submit" value="Submit">
				</label>
			
			</div>
			<div class="col-md-6 login-right">
				 <h3>Complete Your Data</h3>
				 
				 <p> Silahkan isi data diri anda agar memudahkan kami dalam pengiriman. Terimakasih :) </p>

			</div>
			
			<div class="clearfix"> </div>
			</form>
		</div>
</div>

<!--//login-->
<!--brand-->
		<div class="container">
			<div class="brand">
			</div>
			</div>
			<!--//brand-->
			</div>
			
		</div>
	<!--//content-->
	<!--//footer-->
<?php $this->load->view ("user/footer") ?>