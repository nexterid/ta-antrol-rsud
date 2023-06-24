<?php
// print_r($menu);
?>
<ul class="nav navbar-nav side-nav">
	<?php 
	foreach ($menu as $key => $value) { ?>
		<li class="<?php echo strtolower(str_replace(' ', '_', $value['nama']))?>">
			<?php if($value['child']) { ?>
				<a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="<?php echo $value['icon'];?>"></i> <?php echo ucfirst($value['nama']);?> <i class="fa fa-fw fa-caret-down"></i></a>
				<ul id="demo" class="collapse">
				<?php foreach ($value['child'] as $key2 => $value2) { ?>
					<li>
                    	<a href="<?php echo base_url($value2['url']);?>"><?php echo $value2['nama'];?></a>
                    </li>	
				<?php } ?>
				</ul>
			<?php } else { ?>
				<a href="<?php echo base_url($value['url']);?>"><i class="<?php echo $value['icon'];?>"></i> 	
	        		<?php echo ucfirst($value['nama']);?>
	        	</a>
			<?php } ?>
	        
    	</li>	
	<?php } ?>
</ul>