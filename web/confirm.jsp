<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="resources/style/mstyle.css" type="text/css"/>
        <title>Podsumowanie</title>

    </head>
    <body class="tlo0">
        <div class="tlo1">
            <h1 class="nag_h1">Podsumowanie danych użytkownika</h1>
            <hr/>
            <table>
                <tr>
                    <td>Imię:</td>
                    <td class="td_con">${param.i}</td>
                </tr>
                <tr>
                    <td>Nazwisko:</td>
                    <td class="td_con">${param.n}</td>
                </tr>
                <tr>
                    <td>E-mail:</td>
                    <td class="td_con">${param.e_m}</td>
                </tr>
                <tr>
                    <td>Płeć:</td>
                    <td class="td_con">${param.p}</td>
                </tr>
                <tr>
                    <td>Województwo:</td>
                    <td class="td_con">${param.woj}</td>
                </tr>
                <tr>
                    <td>Sex:</td>
                    <td class="td_con">${param.k}</td>
                </tr>
            </table>
            <hr/>
            <form metod="post" action="index.html">
                <input type="submit" value="Popraw dane" />
                
            </form>
            <form action="stored.jsp">
                <input type="submit" value="Zapisz do bazy"/>
                
                 <input type="hidden" name="i" value="${param.i}">
                 <input type="hidden" name="n" value="${param.n}">
                 <input type="hidden" name="e_m" value="${param.e_m}">
                 <input type="hidden" name="p" value="${param.p}">
                 <input type="hidden" name="woj" value="${param.woj}">
                 
            </form>
        </div>
    </body>
</html>
