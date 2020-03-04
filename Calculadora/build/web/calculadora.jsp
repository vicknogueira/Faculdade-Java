<%-- 
    Document   : calculadora
    Created on : 03/03/2020, 20:39:15
    Author     : Internet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500i,800&display=swap" rel="stylesheet">
        <title>Calculadora</title>
        <style>
            body {
                font-family: 'Montserrat', sans-serif;
            }
            
            h1, p{
                text-align: center;
            }
            .divSoma{
                display: flex;
                justify-content: center;
                align-items: center;
            }
            
            .resultado {
                width: 200px;
                height: 70px;
                background-color: white;
                box-shadow: 1px 4px 3px 1px rgba(0,0,0,0.2);
                border: 1px solid rgba(0,0,0,0.2);
                border-radius: 8px;
                display: flex;
                justify-content: center;
                align-items: center;
                margin: 1rem;
                font-size: 0.95rem;
            }
        </style>
        
    </head>
    <body>
        <%
            String valor1,valor2; // Declarando a variável com o tipo string (cadeia)
            valor1 = request.getParameter("valorA"); // a variável recebe o valor do input
            valor2 = request.getParameter("valorB"); // memacoisa
            
            float v1, v2, soma, mult, sub, div; // Declarando a variável ja com o tipo real
            v1 = Float.parseFloat(valor1); // pegando a variável e transformando e recebendo o valor das outras variáveis convertidos em real
            v2 = Float.parseFloat(valor2);
            soma = v1 + v2;
            mult = v1 * v2;
            sub = v1 - v2;
            
            div = v1 / v2;
            
            if ( v1 == 0 || v2 == 0) {
                div = 0;
            }

        %>
        <br>
        <h1>Calculadora</h1>
        <hr>
        <div class='divSoma'>
            <span class='resultado'><p>A soma é: <%=soma%></p> </span> <%-- '<%= %>' para invocar uma variável--%>
            <span class='resultado'><p>A multiplicação é: <%=mult%></p> </span> <%-- '<%= %>' para invocar uma variável--%>
        </div>
        <div class='divSoma'>        
            <span class='resultado'><p>A subtração é: <%=sub%></p> </span> <%-- '<%= %>' para invocar uma variável--%>
            <span class='resultado'><p>A divisão é: <%=div%></p> </span> <%-- '<%= %>' para invocar uma variável--%>
        </div>
    </body>
</html>
