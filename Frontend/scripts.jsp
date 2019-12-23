<%-- 
    Document   : index
    Created on : Jul 23, 2018, 8:27:05 PM
    Author     : Emil Kalbaliyev
--%>

<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>

<%--        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
<%--        <meta http-equiv="refresh" content="300">--%>
<%--        <title>Scripts</title>--%>
<%--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
<%--        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">--%>
<%--        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>--%>
<%--        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>--%>
<%--        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>--%>
<%--        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">--%>
        <style>
            .table>tbody>tr>td, 
            .table>tfoot>tr>td,
            .table>thead>tr>td{
                text-align:center;
                vertical-align: middle;
                max-width: 350px;
            }
            .table>tbody>tr>th,
            .table>tfoot>tr>th, 
            .table>thead>tr>th{
                text-align:center;
                max-width: 350px;
            }
        </style>

    </head>
    <body>

        <div class="" style="margin-top:70px; margin-left: 5%;margin-right: 5%;">
            <table id="scripts" class="table table-striped table-bordered" >
                <thead>
                    <tr>
                        <th>Name</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="script" items="${scripts}">
                        <tr>
                            <td><b>${script.id}</b></td>
                            <td><b>${script.fullname}</b></td>
                            <td><b>${script.address}</b></td>
                            <td><b>${script.email}</b></td>
                            <td><b>${script.phone}</b></td>
                            <td><b><img src="${script.pic}" alt="Girl in a jacket">
                                    </b></td>
                            <td><b>${script.price}</b></td>
                            <td><b>${script.spec}</b></td>
                            <td><b>${script.title}</b></td>

                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
