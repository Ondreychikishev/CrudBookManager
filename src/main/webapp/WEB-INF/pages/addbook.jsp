<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>Add Book</title>

    <style type="text/css">
        .features-table
        {
            width: 50%;
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
            text-align: left;
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

        h1 {
            margin-top: 10px;
            margin-bottom: 0;
            text-align: center;
        }
    </style>
</head>
<body>
<a href="<c:url value="/book"/>">Back to books list</a>
<br/>
<br/>
<h1>Add Book</h1>

<c:url var="addAction" value="/book/add"/>

<%--@elvariable id="book" type=""--%>
<form:form action="${addAction}" commandName="book">
    <table class="features-table">

        <tr>
            <td class="param">
                <form:label path="title">
                    <spring:message text="Booktitle"/>
                </form:label>
            </td>
            <td>
                <form:input path="title"/>
            </td>
        </tr>
        <tr>
            <td class="param">
                <form:label path="description">
                    <spring:message text="Description"/>
                </form:label>
            </td>
            <td>
                <form:input path="description"/>
            </td>
        </tr>
        <tr>
            <td class="param">
                <form:label path="author">
                    <spring:message text="Author"/>
                </form:label>
            </td>
            <td>
                <form:input path="author"/>
            </td>
        </tr>
        <tr>
            <td class="param">
                <form:label path="printYear">
                    <spring:message text="Print_Year"/>
                </form:label>
            </td>
            <td>
                <form:input path="printYear"/>
            </td>
        </tr>
        <tr>
            <td class="param">
                <form:label path="isbn">
                    <spring:message text="ISBN"/>
                </form:label>
            </td>
            <td>
                <form:input path="isbn"/>
            </td>
        </tr>

        <tr>
            <td class="param"><form:label path="readAlready"><spring:message text="Read_Already"/></form:label></td>
            <td>
                <form:checkbox path="readAlready" value="false"/>
            </td>
         </tr>

        <tr>
            <td colspan="2" style="text-align: center">
                <input type="submit"
                           value="<spring:message text="Add Book"/>"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>