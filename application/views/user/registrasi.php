<!doctype html>
<html lang="en">
<base href="<?php echo base_url('assets/user') ?>/">

  <!-- <head> -->
    <!-- Required meta tags -->
    <!-- <meta charset="utf-8"> -->
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> -->

    <!-- Bootstrap CSS -->
    <!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->

    <!-- <title>Halaman Registrasi</title> -->
  <!-- </head> -->

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Freelancer - Start Bootstrap Theme</title>

  <!-- Custom fonts for this theme -->
  <link href="<?php echo base_url('assets/user')?>/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Theme CSS -->
  <link href="<?php echo base_url('assets/user')?>/css/freelancer.min.css" rel="stylesheet">


</head>

  <body>

      <!-- Portfolio Section Heading -->
      <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Registrasi</h2>

      <!-- Icon Divider -->
      <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>


    <div class="container">
      <div class="row justify-content-md-center">
        <div class="col-md-6" style="margin-top: 20px">
          <form action="<?php echo base_url('Index/registrasi') ?>" method="post">

            <div>
                <label >Nomor Identitas</label>
                <input type="text" id="no_identitas" name="no_identitas" class="form-control" value="">
            </div>

            <div>
               <label >Nama</label>
               <input type="text" id="nama" name="nama" class="form-control" value="">
            </div>

            <div>
              <label >Jenis Kelamin</label>
              <select id="jenis_kelamin" name="jenis_kelamin" class="form-control">
              <option value="">Pilih</option>
              <option value="Laki-Laki">Laki-Laki</option>
              <option value="Perempuan">Perempuan</option>
              </select>
            </div>

            <!-- <div>
                <label >Usia</label>
                <input type="text" id="usia" name="usia" class="form-control" value="">
            </div> -->

            <div>
                <label >Tanggal Lahir</label>
                <input type="date" id="tgl_lahir" name="tgl_lahir" class="form-control" value="">
            </div>

            <div>
            <label >Alamat</label>
            <textarea id="alamat" name="alamat" class="form-control"></textarea>
            </div>

            <div>
                <label >No Telephone</label>
                <input type="no_telp" id="no_telp" name="no_telp" class="form-control" value="">
            </div>

            <div>
                <label >Username</label>
                <input type="text" id="username" name="username" class="form-control" value="">
            </div>

            <div>
                <label >Password</label>
                <input type="password" id="password" name="password" class="form-control" value="">
            </div>

            <br><br>
            <div align="right">
            <!-- <a href="<?php //echo base_url() ?>"  >Registrasi</a> -->
            <input type="submit" name="" value="Registrasi"class="btn btn-info">
            </div>
          
          </form>
        </div>
      </div>
    </div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.3.1.slim.min.js"></script>
    <script src="js/popper.min.js" ></script>
  </body>
</html>


