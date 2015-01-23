<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/1/23
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
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

</body>
</html>
