
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="index.css" type="text/css">
        <title>Simple Salary Calculator</title>
    </head>
    <body>
        <div class ="centerDiv">
        <h1>Simple Salary Calculator</h1>
        <form name="demoForm" action="results.jsp" method="post">
            <hr>
            <table align="center">
                <tbody>
                    <tr>
                        <td>Hours Worked:</td><td><input type="text" name="workTime" value="" size="30" required></td>
                    </tr>
                    <tr>
                        <td>Hourly Pay:</td><td><input type="text" name="workPay" value="" size="30" required></td>
                    </tr>
                    <tr>
                        <td>Pre-tax Deduct:</td><td><input type="text" name="PreDe" value="" size="30" required></td>
                    </tr>
                    <tr>
                        <td>Post-tax Deduct:</td><td><input type="text" name="PostDe" value="" size="30" required></td>
                    </tr>
                </tbody>
            </table>
            <input type="reset" value="Clear" id="clear" align="center">
            <input type="submit" value="Submit" id="submit">
        </form>
        </div>
    </body>
</html>
