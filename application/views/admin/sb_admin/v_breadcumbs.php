<ol class="breadcrumb">
    <?php
    if(isset($breadcumbs)){
        $i = 1;
        foreach($breadcumbs as $key):
            if($i == count($breadcumbs)){ ?>
                <li class="active">
                    <i class="<?php echo $key['icon'];?>"></i> <?php echo $key['nama'];?>
                </li>
            <?php } else { ?>
            <li class="active">
                <a href="<?php echo base_url($key['url'])?>"><i class="<?php echo $key['icon'];?>"></i> <?php echo $key['nama'];?></a>
            </li>
        <?php }$i++;endforeach;}?>

</ol>