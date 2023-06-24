<!-- Morris Charts CSS -->
<link href="css/plugins/morris.css" rel="stylesheet">
<div class="row">
    <div class="col-lg-9 col-md-6">
       <form action="<?php echo base_url('admin/akun/reset_password');?>" method="POST">
          <div class="form-group">
            <label for="exampleInputEmail1">Password Saat Ini</label>
            <input type="password" name="cur_pass" class="form-control" id="exampleInputEmail1" placeholder="Password Sekarang" required="required">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password Baru</label>
            <input type="password" class="form-control" name="new_password" id="exampleInputPassword1" placeholder="Password Baru" required="required">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password Baru Lagi</label>
            <input type="password" class="form-control" name="re_password" id="exampleInputPassword1" placeholder="Password Baru" required="required">
          </div>
        <button type="submit" class="btn btn-default">Simpan</button>
        </form>
    </div>
    <div class="col-lg-3 col-md-6">
        
    </div>
</div>
<!-- /.row -->

<script src="js/jquery.js"></script>
