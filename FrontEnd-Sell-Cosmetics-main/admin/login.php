<?php 
include '../classes/adminlogin.php';
?>
<?php 
    $class = new adminlogin();
    if($_SERVER['REQUEST_METHOD']=='POST'){
      $nvEmail = $_POST['nvEmail'];
      $nvPassword = $_POST['nvPassword'];

      $login_check = $class->login_admin($nvEmail, $nvPassword);
    }
?>

<!DOCTYPE html>
<!-- saved from url=(0051)https://getbootstrap.com/docs/4.0/examples/sign-in/ -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="https://getbootstrap.com/docs/4.0/assets/img/favicons/favicon.ico">

    <title>Signin Template for Bootstrap</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/sign-in/">

    <!-- Bootstrap core CSS -->
    <link href="./Signin Template for Bootstrap_files/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./Signin Template for Bootstrap_files/signin.css" rel="stylesheet">
  </head>

  <body class="text-center">
    <form action="login.php" method="post" class="form-signin">
      <!-- <img class="mb-4" src="favicon-32x16.png alt="" width="72" height="72"> -->
      <h1 class="h3 mb-3 font-weight-normal">Đăng nhập</h1>
      <span>
        <?php
        if(isset($login_check)){
          echo $login_check;
        }
        ?>
      </span>

      <label for="inputEmail" class="sr-only">Tên đăng nhập</label>
      <input type="email" id="inputEmail" class="form-control" placeholder="Tên đăng nhập" required="" name ="nvEmail" autofocus="">
      <label for="inputPassword" class="sr-only">Mật khẩu</label>
      <input type="password" id="inputPassword" class="form-control" placeholder="Mật khẩu" required="" name ="nvPassword">
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
      <input class="btn btn-lg btn-primary btn-block" type ="submit" value ="Đăng nhập"/>
      
    </form>

</body></html>