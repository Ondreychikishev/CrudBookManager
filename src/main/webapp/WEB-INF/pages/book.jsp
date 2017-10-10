<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
        <title>Book page</title>
        <style type="text/css">
            h1 {
                margin-top: 10px;
                margin-bottom: 0;
            }

            .features-table
            {
                width: 100%;
                margin: 0 auto;
                border-collapse: separate;
                border-spacing: 0;
                border: 0;
                text-shadow: 0 1px 0 #fff;
                color: #2a2a2a;
                background: #fafafa;
                margin-top:20px;
                margin-bottom:20px;
            }

            .features-table td
            {
                height: 50px;
                padding: 0 20px;
                border-bottom: 1px solid #cdcdcd;
                box-shadow: 0 1px 0 white;
                text-align: center;
                vertical-align: middle;
                display: table-cell;
                text-align: center;
                width: 150px;
                border-right: 1px solid white;
            }

            .features-table .param
            {
                font-size: 120%;
                font-weight: bold;
                background: #efefef;
                background: rgba(144,144,144,0.15);
            }

            .features-table tr:last-child td {
                -webkit-border-radius: 0 0 12px 12px;
                border-radius: 0 0 12px 12px;
            }

            .features-table tr:first-child td {
                -webkit-border-radius: 12px 12px 0 0;
                border-radius: 12px 12px 0 0;
            }

            ul.paging {
                display: inline-block;
                margin:0 auto;
                padding: 0;
            }

            ul.paging li {
                display: inline;
                border: 1px solid #ddd;
                border-radius: 10%;
                color: black;
                background: #fafafa;
                float: left;
                font-size: 18px;
                padding: 8px 16px;
                text-decoration: none;
            }

            .but {
                background-color: #fafafa;
                border: 1px solid #ddd;
                box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
                transition: border 0.2s linear 0s, box-shadow 0.2s linear 0s;
                border-radius: 4px;
                color: #555555;
                display:block;
                width:120px;
                font-size: 14px;
                text-align:center;
                vertical-align: middle;
                height: 30px;
                line-height: 20px;
                text-decoration:none;
            }
        </style>
    </head>
<body>

    <h1>Books List</h1>

    <c:url var="searchbook" value="/searchresults"/>
    <form:form action="${searchbook}" commandName="searchedbook">
        <table width="30%">
            <tr>
                <td><input class="but" type="submit" name="action" value="<spring:message text="Search"/>"/></td>
                <td><form:input path="title"/> <spring:message text="Title"/></td>
            </tr>
        </table>
    </form:form>
    <c:url var="searchbook" value="/searchresults"/>

    <form>
        <div align="center"><a class="but" href="/addbook">Add Book</a></div>
    </form>


    <c:if test="${!empty listbooks}">
        <table class="features-table">
            <tr class="param">
                <th>ID</th>
                <th>Title</th>
                <th>Description</th>
                <th>Author</th>
                <th>Isbn</th>
                <th>Print_Year</th>
                <th>Read_Already</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <c:forEach items="${listbooks}" var="book">
                <tr>
                    <td>${book.id}</td>
                    <td><a href="/bookdata/${book.id}" target="_blank">${book.title}</a></td>
                    <td>${book.description}</td>
                    <td>${book.author}</td>
                    <td>${book.isbn}</td>
                    <td>${book.printYear}</td>
                    <td>${book.readAlready}</td>
                    <td><a href="<c:url value='/edit/${book.id}'/>">Edit</a></td>
                    <td><a href="<c:url value='/remove/${book.id}'/>">Delete</a> </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <div style="align-content: center">
    <ul class="paging">
        <c:if test="${page > 1}">
            <li><a href="<c:url value="/book"/>">Back</a></li>
            <li><a href="<c:url value="/book"><c:param name="page" value="${page - 1}"/>${page - 1}</c:url>">Previous</a></li>
        </c:if>
        <li><spring:message text="${page}"/></li>
        <c:if test="${!empty listbooks}">
            <li><a href="<c:url value="/book"><c:param name="page" value="${page + 1}"/>${page + 1}</c:url>">Next</a></li>
        </c:if>
    </ul>
    </div>
</body>
</html>
