<!DOCTYPE html>
<html>
<head>
	<title>Đăng ký</title>
		<link rel="icon" href="fonts/fontawesome-free-5.15.3-web/svgs/solid/shopping-bag.svg">
        <link rel="stylesheet" href="../css/normalize.css">
        <link rel="stylesheet" href="../css/base.css">
        <link rel="stylesheet" href="../css/grid.css">
        <link rel="stylesheet" href="css/index.css">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="fonts/fontawesome-free-5.15.3-web/css/all.css">
</head>
<style type="text/css">
	.dangky {
	position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 800px;
    height: auto;
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

	.register__form {
		margin: auto;
		margin-bottom: 20px;
	}

	.register__input {
		height: 30px;
		margin-top: 10px;
		border: 1px solid rgba(0, 0, 0, 1);
		border-radius: 3px;
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
<body style="background-color: var(--white-color);">
	
	<div class="dangky">
		<div class="login__top">
			<h3 class="login__header">ĐĂNG KÝ THÀNH VIÊN</h3>
		</div>
		<form action="xulydkthanhvien.php" method="POST">
			<table  class="register__form">
				<tr>
					<td>Tên đầy đủ:</td>
					<td>
						<input class="register__input" type="text" name="fullname">
					</td>
				</tr>
				<tr>
					<td>Tài khoản gmail (nếu có):</td>
					<td>
						<input class="register__input" type="text" name="email">
					</td>
				</tr>
				<tr>
					<td>Số điện thoại (nếu có):</td>
					<td>
						<input class="register__input" type="text" name="phone_number">
					</td>
				</tr>
				<tr>
					<td>Tên đăng nhập:</td>
					<td>
						<input class="register__input" type="text" name="username">
					</td>
				</tr>
				<tr>
					<td>Password:</td>
					<td>
						<input class="register__input" type="password" name="password">
					</td>
				</tr>
				<tr>
					<td>Nhập lại mật khẩu:</td>
					<td>
						<input class="register__input" type="password" name="repassword">
					</td>
				</tr>
				<tr colspan="2">
					<td><button id="btn2" type="submit" name="submit">Đăng ký</button></td>
					<td><button id="btn2" type="reset">Làm mới</button></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>