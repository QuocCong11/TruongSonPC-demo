<!DOCTYPE html>
<html lang="en">

<head>
    <title>Đăng nhập</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="fonts/fontawesome-free-5.15.3-web/svgs/solid/shopping-bag.svg">
        <link rel="stylesheet" href="../css/normalize.css">
        <link rel="stylesheet" href="../css/base.css">
        <link rel="stylesheet" href="../css/grid.css">
        <link rel="stylesheet" href="css/index.css">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="fonts/fontawesome-free-5.15.3-web/css/all.css">
    <title>Log In</title>
</head>

<style>
body {
    background: var(--while-color);
}

.login {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 350px;
    height: 250px;
    text-align: center;
    border-radius: 5px;
    border: 1px solid rgba(0, 0, 0, 0.2);
    font-size: 18px;
    overflow: hidden;
}

.login__top {
    background-color: var(--black-color);
    height: 40px;
}

.login__header {
    color: var(--white-color);
    line-height: 40px;
    font-size: 2rem;
}

.login__table {
    margin: auto;
}

.login__infor {
    margin-top: 30px;
    margin-left: 20px;
}

.login__infor td {
    font-weight: 400;
}

.login__name-button {
    height: 30px;
    margin-left: 20px;
    border: 1px solid rgba(0, 0, 0, 1);
    border-radius: 3px;
}

.login__password-button {
    height: 30px;
    margin-left: 20px;
    border: 1px solid rgba(0, 0, 0, 1);
    border-radius: 3px;
    margin-top: 10px;
}

#btn2{
      margin-top: 20px;
      height: 35px;
      width: 100px;
      border-radius: 7px;
      background-color:  var(--white-color);
      cursor: pointer;
      border: 1px solid var(--black-color);
    }

    #btn2:hover{
       background-color: green;
       color: white;
    }
    #btn2{
       box-shadow: rgba(0, 0, 0, 0.15) 1.95px 1.95px 2.6px;
    }
</style>
<?php
    session_start();
   include 'conn.php';
   
   if(isset($_POST["submit"])){
       
       $username = $_POST["username"];
       $password = $_POST["password"];
       if($username=="" || $password== ""){
           $kq= "Vui lòng nhập username và password";
       }else{
           $sql = "SELECT * FROM member where username='$username' and password='$password'";
          
          
           $query = mysqli_query($conn,$sql);
           $rows = mysqli_num_rows($query);
           $row = mysqli_fetch_assoc($query);
           if($rows>0){
                
                $_SESSION['username']=$username;
                if($row['id_role']==1){
                   
                    header("location:../admin/category/index.php");                    
                }else{
                  $_SESSION['currAdmin'] = $row['id_role'];
                    header("location:allproduct.php");

                }
            }else{
                $kq= "Sai tên đăng nhập hoặc mật khẩu";
            

          }
       }
   }
?>
<body>
    <div class="login">
        <form action="" method="post">
                <div class="login__top">
                    <h1 class="login__header">ĐĂNG NHẬP</h1>
                </div>
                <table class="login__table">
                    <div class="login__infor">
                        <tr>
                            <td>Tên đăng nhập</td>
                            <td>
                                <input class="login__name-button" type="text" name="username" autofocus placeholder="Tên đăng nhập ">
                            </td>
                        </tr>
                        <tr>
                            <td>Mật khẩu</td>
                            <td>
                                <input class="login__password-button" type="password" name="password" placeholder="Mật khẩu">
                            </td>
                        </tr>
                    </div>

                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" value="Đăng nhập" id="btn2" name="submit">
                            <button id="btn2"><a href="dkthanhvien.php" style=" color: black; text-decoration: none;">Đăng ký</a></button>
                        </td>
                    </tr>
                    </table>
            <p style="color:red"><?php if(isset($kq)){echo $kq;}?></p>
        </form>
    </div>
    
</body>

</html>