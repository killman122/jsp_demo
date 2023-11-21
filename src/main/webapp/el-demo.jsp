<%--
  Created by IntelliJ IDEA.
  User: 24834
  Date: 2023/11/20
  Time: 20:18
  To change this template use File | Settings | File Templates.
--%>
<%--在使用el表达式的时候需要将isELIgnored设置为false--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%--引入对应的taglib标签库, 对应的是jstl/core, 对写入的JSTL标签进行解析--%>
<%--标签中前缀的名称任意编写, 但是一般情况下将标签写为c标签, 这里的标签名称对应的属性是prefix, uri属性引入jstl标签库的位置--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    ${brands}<%--在jsp页面中调用外不servlet中的变量, 这里的变量是通过${}的方式调用, 在jsp页面中可以直接使用, 从servlet页面中直接通过请求转发的方式传递到servlet页面--%>
    <%--
        c: if 标签为了完成逻辑判断, 替换Java代码if..else, 使用标签的形式实现, 减少了jsp页面中的Java代码和前端html标签的耦合度
        c: set
        c: param
        c: choose
        c: when
        c: otherwise
        c: end
        c: forEach
        c: set
    --%>
    <%--在c:if标签中添加判断条件, 可以添加逻辑表达式--%>
    <c:if test="true">
        <h1>true</h1>
    </c:if>
    <c:if test="false">
        <h1>true</h1>
    </c:if>
</body>
</html>
