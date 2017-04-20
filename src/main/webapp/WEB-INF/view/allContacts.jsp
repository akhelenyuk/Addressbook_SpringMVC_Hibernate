<%--
  Created by IntelliJ IDEA.
  User: okhelenyuk
  Date: 07.04.2017
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Main menu</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<form method='post' action="/menu">
    <%--start of the page--%>
    <div class='container'>
        <div class='row'>
            <%--<p align='right'>--%>
            <%--<c:if test="${currentUser.loggedIn}">--%>
            <%--<a href='/editUser'>--%>
            <%--Hi, ${currentUser.name}--%>
            <%--</a>--%>
            <%--<a class="btn btn-default" href="/logOut" role="button">LogOut</a>--%>
            <%--</c:if>--%>

            <%--<c:if test="${!currentUser.loggedIn}">--%>
            <%--<a href='/editUser'>--%>
            <%--Войти/Зарегистрироваться--%>
            <%--</a>--%>
            <%--</c:if>--%>
            <%--</p>--%>
            <%--// Buttons--%>
            <div class='btn-group'>
                <%--<input type='submit' name='new' class='btn btn-primary' value='New Contact'>--%>
                <a class="btn btn-default" href="/add" role="button">New Contact</a>
                <%--</div>--%>

                <%--<div class='btn-group'>--%>
                <%--<a class="btn btn-default" href="/edit" role="button">Edit</a>--%>
                <input type='submit' name='edit' class='btn btn-default' value='Edit'>
                <%--</div>--%>
                <%--<div class='btn-group'>--%>
                <input type='submit' name='delete' class='btn btn-default' value='Delete'>
            </div>
        </div>

        <div class='row'>
            <div class='panel panel-default'>
                <div class='panel-heading'>
                    <h2 class='panel-title'>Contacts</h2>
                </div>
                <div class='panel-body'>
                    <table class='table table-hover'>
                        <c:if test="${contacts==null}">
                            <h3>You have no contacts yet</h3>
                        </c:if>
                        <c:if test="${contacts!=null}">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Contact id</th>
                                <th>Name</th>
                                <th>email</th>
                                <th>Phone</th>
                                <th>Company</th>
                                <th>Additional info</th>
                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${contacts}" var="contact">
                                <tr>
                                    <td><input type='checkbox' name="contactId" value="${contact.id}"></td>
                                    <td> ${contact.id} </td>
                                    <td> ${contact.name} ${contact.lastName} </td>
                                    <td> ${contact.email} </td>
                                    <td> ${contact.phone} </td>
                                    <td> ${contact.company} </td>
                                    <td> ${contact.addInfo} </td>
                                </tr>
                            </c:forEach>
                            </tbody>

                        </c:if>
                    </table>
                </div>
            </div>
        </div>
    </div>
</form>

</body>
</html>
