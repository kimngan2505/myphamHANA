<?php
    include 'config/config.php';
    if(isset($_POST["submit"]) && $_POST["username"] != '' && $_POST["password"] != '' ){
        $username = $_POST["username"];
        $password = $_POST["password"];
        $password = md5($password);
        $sql = "SELECT * FROM taikhoan WHERE username='$username' AND password='$password'";
        $user = mysqli_query($conn, $sql);
        if(mysqli_num_rows($user)>0){
            echo"Dang nhap thanh cong";
        }else{
            header("location: trangchu.php");
        }
    }
?>