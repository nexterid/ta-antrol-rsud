<?php $this->load->view ("user/header") ?>
<!--banner-->
<div class="banner-top">
	<div class="container">
		<h1>Products</h1>
		<em></em>
		<h2><a href="index.html">Home</a><label>/</label>Products</a></h2>
	</div>
</div>
	<!--content-->
		<div class="product">
			<div class="container">
			<div class="col-md-9">
			<div class="mid-popular">
				
				<?php foreach($pro -> result () as $key){ ?>
					<div class="col-md-4 item-grid1 simpleCart_shelfItem" >
					<div class=" mid-pop">
					<div class="pro-img">
						<img src="<?php echo base_url('assets/uploads/files/'.$key -> gambar)?>" height="200" class="img-responsive" alt="">
						<div class="zoom-icon ">
						<a class="picture" href="<?php echo base_url('assets/uploads/files/'.$key -> gambar)?>" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
						<a href="<?php echo base_url('index/single/'.$key -> id_produk) ?>"><i class="glyphicon glyphicon-menu-right icon"></i></a>
						</div>
						</div>
						<div class="mid-1">
						<div class="women">
						<div class="women-top">
							<span><?php echo $key->nama_kategori ?></span>
							<h5><a href="<?php echo base_url('index/single/'.$key -> id_produk)?>"><?php echo $key -> nama_produk ?></a></h5>
							</div>
							<br>
							<div style="clear:both"></div>
							<div class="img item_add">
								<a href="#"><img src="images/ca.png" alt=""></a>
							</div>
							<div class="clearfix"></div>
							</div>
							<div class="mid-2">
								<h4 >Rp <?php echo number_format($key -> harga) ?><h4>
								  <div class="block">
								</div>
								
								<div class="clearfix"></div>
							</div>
							
						</div>
					</div>
					</div>
				<?php } ?>
				
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-md-3 product-bottom">
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
 		
				<!--products-->
			
			<!--//products-->
		<!--brand-->
			</div class="clearfix"></div>
	<!--//content-->
		<!--//footer-->
<?php $this->load->view ("user/footer") ?>