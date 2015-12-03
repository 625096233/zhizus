<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>


<form action="/fileUpload" method="post" enctype="multipart/form-data">
    <input name="file" id="file" type="file"/>
    <input type="submit" value="submit">
</form>



<form action="" method="post" enctype="multipart/form-data">

    名称：<input type="text" id="name" name="name" >
    图片：<input type="file" id="photo" name="photo">
    <input type="submit" value="上传图片">

</form>

</body>
</html>
