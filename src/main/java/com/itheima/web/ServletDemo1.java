package com.itheima.web;

import com.itheima.pojo.Brand;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/demo1")
public class ServletDemo1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1. 准备数据
        List<Brand> brands = new ArrayList<Brand>();
        brands.add(new Brand(1, "三只松鼠", "三只松鼠", 100, "三只松鼠，好吃不上火", 1));
        brands.add(new Brand(2, "优衣库", "优衣库", 200, "优衣库，服适人生", 0));
        brands.add(new Brand(3, "小米", "小米科技有限公司", 1000, "为发烧而生", 1));

        //2. 将数据存储到request域中, 在请求转发中使用request对象的三个方法,其中存储数据到键值对中, 使用的方法是setAttribute
        request.setAttribute("brands", brands);
        //这里将属性status表达式中的1表示为启用, 0表示为弃用, 并且这个属性需要转发到jstl-if.jsp页面中, 需要在jstl-if.jsp页面中使用EL表达式${status}, 进行接收和解析, 正常情况下使用请求转发接收消息可以使用getAttribute, 但是如果想要使用jstl表达式，需要使用request对象的setAttribute方法存储数据到request域中, 否则会报错
        request.setAttribute("status", 1);

        //3.转发数据到另外的页面,这里转发到el-demo.jsp页面中
//        request.getRequestDispatcher("/el-demo.jsp").forward(request, response);
//        request.getRequestDispatcher("/jstl-if.jsp").forward(request, response);
        request.getRequestDispatcher("/jstl-foreach.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
