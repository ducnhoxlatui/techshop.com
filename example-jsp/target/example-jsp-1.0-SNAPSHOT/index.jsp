<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 8/31/2021
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Demo JSP</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.css" integrity="sha512-4wfcoXlib1Aq0mUtsLLM74SZtmB73VHTafZAvxIp/Wk9u1PpIsrfmTvK0+yKetghCL8SHlZbMyEcV8Z21v42UQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
    * {
        font-family: 'Product Sans',Arial,Helvetica,sans-serif;
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        list-style-type: none;
        text-decoration: none;
    }

    header {
        display: flex;
        padding: 12px 24px 12px 24px;
        justify-content: space-between;
    }

    header .homepage {
        display: flex;
        align-items: center;
        justify-content: center;
    }

    header .account .new {
        display: flex;
        align-items: center;
        justify-content: center;
    }
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }

    tr:nth-child(even) {
        background-color: #dddddd;
    }
</style>
<body>
    <%
        List<String> listStudent = new ArrayList<>();
        listStudent.add("student 1");
        listStudent.add("student 2");
        listStudent.add("student 3");
    %>
<table>
    <tr>
        <th>Name</th>
    </tr>
    <%
        for (String item: listStudent){
    %>
    <tr>
        <td><% out.println(item);%></td>
    </tr>
    <%
        }
    %>
</table>
    <header>
        <div class="homepage">
            <div class="not">
                <a href=""><i class="fas fa-bars"></i></a>
            </div>
            <div class="name">
                <img class="src" src="https://www.gstatic.com/images/branding/googlelogo/svg/googlelogo_clr_74x24px.svg" alt="">
            </div>
            <span>Lớp học</span>
        </div>
        <div class="account">
            <div class="new">
                <a href=""><i class="fas fa-plus"></i></a>
                <a href=""><i class="fas fa-align-justify"></i></a>
                <a href=""><img src="https://lh3.google.com/u/1/ogw/ADea4I6t_5621fPRJBj43Vud3DPBptAWIg8UDPlbP5BF=s32-c-mo" alt=""></a>
            </div>
        </div>
    </header>
</body>
</html>
