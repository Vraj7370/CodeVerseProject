<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Reset Password</title>
</head>
<body>

<h2>Reset Password</h2>

<form action="reset-password" method="post">

    <label>Email:</label>
    <input type="email" name="email" required/>
    <br><br>

    <label>OTP:</label>
    <input type="text" name="otp" required/>
    <br><br>

    <label>New Password:</label>
    <input type="password" name="newPassword" required/>
    <br><br>

    <button type="submit">Reset Password</button>

</form>

<p style="color:red">${msg}</p>

</body>
</html>