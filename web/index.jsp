
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Salary Calculator</title>
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        <form name="demoForm" action="results.jsp" method="post">
         <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td><td><input type="text" name="workTime" value="" size="50" ></td>
                    </tr>
                    <tr>
                        <td>Hourly Pay:</td><td><input type="text" name="workPay" value="" size="50" ></td>
                    </tr>
                    <tr>
                        <td>Pre-tax Deduct:</td><td><input type="text" name="PreDe" value="" size="50" ></td>
                    </tr>
                    <tr>
                        <td>Post-tax Deduct:</td><td><input type="text" name="PostDe" value="" size="50" ></td>
                    </tr>
                </tbody>
            </table>
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
        </form>
    </body>
</html>
