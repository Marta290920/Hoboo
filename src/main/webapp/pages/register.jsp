<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
</head>
<body>
<jsp:include page="header.jsp"/>
<form method="post" action="${pageContext.request.contextPath}/registration">
    <center>
        <table border="1" width="30%" cellpadding="5">
            <thead>
            <tr>
                <th colspan="2">Enter Information Here</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Last Name:</td>
                <td><input type="text" name="lastname" value=""/></td>
            </tr>
            <tr>
                <td>First Name:</td>
                <td><input type="text" name="name" value=""/></td>
            </tr>
            <tr>
                <td>Surname:</td>
                <td><input type="text" name="surname" value=""/></td>
            </tr>
            <tr>
                <td>Birthday:</td>
                <td><input type="date" name="birthday" id="birthday" max="3000-12-31"
                           min="1000-01-01" class="form-control"></td>
            </tr>
            <tr>
                <td>City:</td>
                <td><select name="cityName" id="cityID" class="form-control">
                    <c:forEach var="city" items="${cityList}">
                        <option>${city.name}</option>
                    </c:forEach>
                </select></td>
            </tr>
            <tr>
                <td>Street:</td>
                <td><input type="text" id="street" name="street"></td>
            </tr>
            <tr>
                <td>Number of building:</td>
                <td><input type="text" id="number_of_building" name="number_of_building"></td>
            </tr>
            <tr>
                <td>Phone number:</td>
                <td><input type="text" id="phone_number" name="phone_number"></td>
            </tr>
            <tr>
                <td>Login:</td>
                <td><input type="text" id="login" name="login"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="text" id="password" name="password"></td>
            </tr>
            <tr>
                <td><input class="btn_singUp" type="submit" value="Sing-up"/></td>
                <td><input class="btn_reset" type="reset" value="Reset"/></td>
            </tr>
            </tbody>
        </table>
    </center>
</form>
</body>
<jsp:include page="footer.jsp"/>
</html>
