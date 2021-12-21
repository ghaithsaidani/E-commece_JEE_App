package com.example.ilprojetfinale;


import com.example.ilprojetfinale.model.produit;
import com.example.ilprojetfinale.sql.sql;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

@WebServlet(name ="login", value = "/login")
public class login  extends HttpServlet {
    private String message;
    Connection conn;
    Statement stmt;

    @Override


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException, ServletException {
        ArrayList<produit> ls = new ArrayList<>();
        String res11 = "";

        try {

            sql sql = new sql();
            stmt = sql.connexionsahbi();
            ResultSet res = stmt.executeQuery("select *  from utilisateur where username='" + request.getParameter("username") + "' and password='" + request.getParameter("pass") + "'");

            while (res.next()) {
                res11 = res11 + res.getString("id");

            }
        } catch (SQLException e) {
        }
        if (res11.equals("")) {
            request.setAttribute("message", "verifier les parametre entre");
            request.getRequestDispatcher("index.jsp").forward(request, response);

        } else {
          //  request.setAttribute("ut",res11);
            request.getRequestDispatcher("/affichage?ut="+res11).forward(request, response);

        }
    }

}