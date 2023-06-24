<?php $this->load->view ("user/header") ?>
<!--banner-->
<div class="banner-top">
	<div class="container">
		<h1>Single</h1>
		<em></em>
		<h2><a href="index.html">Home</a><label>/</label>Single</a></h2>
	</div>
</div>
<div class="single">

<div class="container">
<div class="col-md-9">
	<div class="col-md-5 grid">		
		<div class="flexslider">
			  <ul class="slides" style="list-style: none">
			    <li data-thumb="<?php echo base_url("assets/uploads/files/".$detail -> gambar) ?>">
			       <div class="thumb-image"> <img src="<?php echo base_url("assets/uploads/files/".$detail -> gambar) ?>" data-imagezoom="true" class="img-responsive"> </div>
			    </li> 
			  </ul>
		</div>
	</div>	
<div class="col-md-7 single-top-in">
						<div class="span_2_of_a1 simpleCart_shelfItem">
				<h3><?php echo $detail->nama_produk ?></h3>
				<p class="in-para"> There are many variations of clothes here.</p>
			    <div class="price_single">
				  <span class="reducedfrom item_price">Rp <?php echo number_format($detail->harga) ?></span>
				 <div class="clearfix"></div>
				</div>
				<h4 class="quick">Detail :</h4>
				<p class="quick_desc">,<?php echo $detail->deskripsi ?></p>
			    <br><br>
				<form method='post' action= <?php echo base_url('index/addcart') ?> >
					<input type='hidden' name='id' value='<?php echo $detail->id_produk ?>'>
					<select name="keterangan">
						<option selected>Pilih Warna</option>
						<?php foreach ($warna->result() as $key): ?>
					  	<option value="<?php echo $key->warna ?>"><?php echo $key->warna ?></option>
					  	<?php endforeach ?>
					</select>
					<!-- <p>
						Pick Your Colors :<br><br>
						<textarea name="keterangan" cols="30" rows="3"></textarea>
					</p> -->
					
					 Qty : <input type='number' name='jumlah' min='1' size='3' > 
					
					 
					<input type="submit" class="add-to item_add hvr-skew-backward" value="Add to cart">
				</form>
			<div class="clearfix"> </div>
			</div>
		
					</div>
			<div class="clearfix"> </div>
			<!---->
			<div class="tab-head">

  <div class="clearfix"></div>
  </div>
			<!---->	
</div>
<!----->

<div class="col-md-3 product-bottom product-at">
			<!--categories-->
					<div class=" rsidebar span_1_of_left">
						<h4 class="cate">Categories</h4>
						<ul class="cute">
							<?php foreach ($kat -> result() as $kategori) { ?>
							<li class="item1"><a href="<?php echo base_url('index/categories/'.$kategori -> id_kategori) ?>"><?php echo $kategori -> nama_kategori ?> </a></li>
							<?php }?>
						</ul>
					</div>
				<!--initiate accordion-->
						<script type="text/javascript">
							$(function() {
							    var menu_ul = $('.menu-drop > li > ul'),
							           menu_a  = $('.menu-drop > li > a');
							    menu_ul.hide();
							    menu_a.click(function(e) {
							        e.preventDefault();
							        if(!$(this).hasClass('active')) {
							            menu_a.removeClass('active');
							            menu_ul.filter(':visible').slideUp('normal');
							            $(this).addClass('active').next().stop(true,true).slideDown('normal');
							        } else {
							            $(this).removeClass('active');
							            $(this).next().stop(true,true).slideUp('normal');
							        }
							    });
							
							});
						</script>
<!--//menu-->
 				<div class="clearfix"></div>
			</div>
			</div>
			<!--//brand-->
			</div>
			
		</div>
	<!--//content-->
		<!--//footer-->
	<?php $this->load->view ("user/footer") ?>