
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
        double overHour;
        double overRate;
        double grossPay;
        double prePay;
        double taxAmt;
        double postPay;
        double netPay;
        if (totalHour >40)
             {overHour = totalHour - 40;
              overRate = overHour * 1.5; 
              grossPay = 40* hourRate + overRate * overHour;
              prePay = grossPay - preDe;
              {if (prePay < 500 )
            {taxAmt = 0.18* prePay;}
            else 
            taxAmt = 0.22 * prePay;}
              postPay = prePay - taxAmt;
              netPay = postPay - postDe;
              }
        else
            { overHour = 0;
              overRate = hourRate;
              grossPay = totalHour * hourRate;
              prePay = grossPay - preDe;
              {if (prePay < 500)
              {taxAmt = 0.18 * prePay;}
              else
               taxAmt = 0.22 * prePay;}
              postPay = prePay - taxAmt;
              netPay = postPay - postDe;
              }
            }


    %>
    
    <body>
        <h1>Salary Info</h1>
        <table border="1">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= totalHour %></td>
                </tr>
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= hourRate %></td>
                </tr>
                <tr>
                    <td>#Hours Overtime:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Gross Pay:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preDe %></td>
                </tr>
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Post-tax Pay:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postDe %></td>
                </tr>
                <tr>
                    <td>Net Pay:</td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
