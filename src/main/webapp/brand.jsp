<%@ page import="com.itheima.pojo.Brand" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 24834
  Date: 2023/11/20
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    //查询数据库
    List<Brand> brands = new ArrayList<Brand>();
    brands.add(new Brand(1, "三只松鼠", "三只松鼠", 100, "三只松鼠，好吃不上火", 1));
    brands.add(new Brand(2, "优衣库", "优衣库", 200, "优衣库，服适人生", 0));
    brands.add(new Brand(3, "小米", "小米科技有限公司", 1000, "为发烧而生", 1));
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<input type="button" value="新增"><br>
<hr>
<table border="1" cellspacing="0" width="800">
    <tr>
        <th>序号</th>
        <th>品牌名称</th>
        <th>企业名称</th>
        <th>排序</th>
        <th>品牌介绍</th>
        <th>状态</th>
        <th>操作</th>

    </tr>
    <tr align="center">
        <td>1</td>
        <td>三只松鼠</td>
        <td>三只松鼠</td>
        <td>100</td>
        <td>三只松鼠，好吃不上火</td>
        <td>启用</td>
        <td><a href="#">修改</a> <a href="#">删除</a></td>
    </tr>


    <%--可以通过截断的方式将Java代码分块为两块, 在两块中间编写html标签的代码, 在下面的这段代码中相当于重复三次后输出--%>
    <%
        for (int i = 0; i < brands.size(); i++) {
            Brand brand = brands.get(i);//获取每一个品牌从brands列表中, 这里也可以使用增强for循环的方式遍历, 但是这里没有使用, 这里使用的是普通for循环的方式遍历
    %>
    <tr align="center">
        <td><%=brand.getId()%>
        </td>
        <td><%=brand.getBrandName()%>
        </td>
        <td><%=brand.getCompanyName()%>
        </td>
        <td><%=brand.getOrdered()%>
        </td>
        <td><%=brand.getDescription()%>
        </td>

        <%
            /*在这里不加等号和感叹号,相当于直接使用的Java代码*/
            if (brand.getStatus().equals("1")) {//brand.getStatus()==1表示启用, 这里的作用效果和使用equals的效果是一样的
                //显示"启用"字样, 这里不能设置Java中实体类的属性即使存在set方法, 但是由于set方法传入的参数类型不同, 所以只能通过html标签的方式填入实现不同字样的显示不同
                //由于需要分段显示
        %>
            <td><%="启用"%></td>
        <%
        } else {//显示"禁用"字样
        %>
            <td><%="禁用"%></td>
        <%
            }
        %>
<%--        <td><%=brand.getStatus()%>--%>
<%--        </td>--%>
        <td><a href="#">修改</a> <a href="#">删除</a></td>
    </tr>
    <%
        }
    %>


</table>

</body>
</html>