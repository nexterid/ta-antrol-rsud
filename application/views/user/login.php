<!doctype html>
<html lang="en">
<base href="<?php echo base_url('assets/user') ?>/">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <title>Hello, world!</title>
  </head>
  <body>
    <div class="container">
      <div class="row justify-content-md-center">
        <div class="col-md-4" style="margin-top: 200px">
          <h1>Login </h1>
          <form>
            <label >Username</label>
            <input type="username" name="username" class="form-control" >
         
            <label>Password</label>
            <input type="password" name="password" class="form-control">
            <br><br>
            <button type="submit" class="btn btn-primary">Login</button>
            <a href="<?php echo base_url('index/regis') ?>" class="btn btn-info">registrasi</a>
          </form>
        </div>
      </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.3.1.slim.min.js"></script>
    <script src="js/popper.min.js" ></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>