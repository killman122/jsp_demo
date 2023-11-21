<%--
  Created by IntelliJ IDEA.
  User: 24834
  Date: 2023/11/21
  Time: 8:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         isELIgnored="false" %><%--默认情况下忽略EL表达式isELIgnored = true--%>

<%--引入对应的taglib标签库, 对应的是jstl/core, 对写入的JSTL标签进行解析--%>
<%--标签中前缀的名称任意编写, 但是一般情况下将标签写为c标签, 这里的标签名称对应的属性是prefix, uri属性引入jstl标签库的位置--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${status==1}"><%--这里也可以使用equals方法比较, 在方法的传参中填入需要进行比较的属性值, 在这里将转发的数据进行接收后的数据比对会出现异常,<c:if test="${status}==1">--%>
    <h1>启用</h1>
</c:if>
<c:if test="${status==0}">
    <h1>禁用</h1>
</c:if>
${brands}
${status}
<%--    <h1>禁用</h1>--%>
</body>
</html>
