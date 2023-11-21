<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>JSP,Hello World</h1>
<%/*再这里不加等号的情况下是直接执行Java代码*/
    System.out.println("hello,jsp~");
    int i =3;
%>

<%="hello"%><%--在这里添加等号的作用是将变量等可以直接当作字符串输出 --%>
<%=i%><%--在这里添加等号的作用是将变量等可以直接当作字符串输出 --%>

<%!
    void show(){};
    String name = "wangdao";
%>
<%--使用<%!%>的方式能够实现将代码块中的内容也写在页面中的成员变量中--%>
</body>
</html>