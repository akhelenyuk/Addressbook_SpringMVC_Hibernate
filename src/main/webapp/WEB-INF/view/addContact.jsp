<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form:form action="save" method="POST" modelAttribute="contact">
    <div class='container'>
        <div class='row'>
            <div class='panel panel-default'>
                <div class='panel-heading'>
                    <h2 class='panel-title'>New contact</h2>
                </div>

                    <%--Inputs--%>
                <div class='panel-body'>
                    <form:hidden path="id"></form:hidden>
                    Name: <form:input path="name"></form:input><br/>
                    Last name: <form:input path="lastName"></form:input><br/>
                    Company: <form:input path="company"></form:input><br/>
                    e-mail: <form:input path="email"></form:input><br/>
                    Phone: <form:input path="phone"></form:input><br/>
                    Additional information: <form:input path="addInfo"></form:input><br/>

                </div>
            </div>
        </div>
        <div class='row'>
            <div class='btn-group'>
                <input type="submit" value="add"><br/>
                <a href="/all">back to contact list</a><br/>
            </div>
        </div>
    </div>
</form:form>

</body>
</html>
