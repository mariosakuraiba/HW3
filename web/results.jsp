
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculation Results</title>
        <link rel="stylesheet" href="results.css" type="text/css">
    </head>
    
   <%
      int totalHour = Integer.parseInt(request.getParameter("workTime"));
      int hourRate = Integer.parseInt(request.getParameter("workPay"));
      int preDe = Integer.parseInt(request.getParameter("PreDe"));
      int postDe = Integer.parseInt(request.getParameter("PostDe"));  
      double overHour = totalHour - 40;
      if(overHour <0)
          overHour =0;
      double overRate = overHour * 1.5;
        double grossPay = 40* hourRate + overRate * overHour;
        double prePay = grossPay - preDe;
        double taxAmt = 0.22 * prePay;
        if (grossPay <=500)
            taxAmt = 0.18 * prePay;
        double postPay = prePay - taxAmt;
        double netPay = postPay - postDe;
        %>
    <body>
        <div class ="centerDiv">
        <h1>Salary Info</h1>
        <hr>
        <table border="1" align="center">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= totalHour%></td>
                </tr>
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= hourRate%></td>
                </tr>
                <tr>
                    <td>#Hours Overtime:</td>
                    <td><%= overHour%></td>
                </tr>
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= overRate%></td>
                </tr>
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= grossPay%></td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preDe%></td>
                </tr>
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= prePay%></td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxAmt%></td>
                </tr>
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= postPay%></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postDe%></td>
                </tr>
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netPay%></td>
                </tr>
            </tbody>
        </table>
        <a href="http://localhost:8084/SalaryCalculator/">Go Back</a>
        </div>
    </body>
</html>
