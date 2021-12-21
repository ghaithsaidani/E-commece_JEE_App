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

@WebServlet(name ="modification", value = "/modification")
public class modification  extends HttpServlet {
    private String message;
    Connection conn;
    Statement stmt;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws  IOException, ServletException {

    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException, ServletException {
        ArrayList<produit> ls = new ArrayList<>();

        try {
            sql sql = new sql();
            Connection cnx = sql.connexionsahbi1();
            PreparedStatement pr = cnx.prepareStatement("UPDATE utilisateur SET username='"+request.getParameter("username")+"',mail='"+request.getParameter("email")+"',password='"+request.getParameter("pass")+"',phone="+request.getParameter("phone")+",adress='"+request.getParameter("adress")+"'  WHERE id="+request.getParameter("id"));
            pr.execute();


           // stmt = sql.connexionsahbi();

        }catch (SQLException E){}
        request.setAttribute("ut",request.getParameter("ut"));
        request.getRequestDispatcher("/affichage").forward(request,response);

    }




    public void destroy() {
    }
}