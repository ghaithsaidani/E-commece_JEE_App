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

@WebServlet(name ="affichage", value = "/affichage")
public class affichage  extends HttpServlet {
    private String message;
    Connection conn;
    Statement stmt;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws  IOException, ServletException {
        ArrayList<produit> ls = new ArrayList<>();
        sql sql =new sql();
        stmt =sql.connexionsahbi();

try{
 ResultSet res1=null;

if ((request.getParameter("act")==null)||request.getParameter("act").equals("1")) {
    res1 = stmt.executeQuery("select *  from produit ");

}
else if(request.getParameter("act").equals("2")){
    res1 = stmt.executeQuery("select *  from produit where type ='ordinateur' ");

}
else if(request.getParameter("act").equals("3")){
    res1 = stmt.executeQuery("select *  from produit where type ='portable' ");

}else {
    res1 = stmt.executeQuery("select *  from produit where type ='montre' ");

}


            while (res1.next()) {
                ls.add(  new produit( Long.parseLong( res1.getString("id")),res1.getString("produit"),Float.parseFloat(res1.getString("prix")),res1.getString("description"),res1.getString("type")));


            }
        } catch (SQLException e) {
            e.printStackTrace();




        }








        request.setAttribute("ls",ls);
request.setAttribute("ut",request.getParameter("ut"));
        request.getRequestDispatcher("acceuille.jsp?ut="+request.getParameter("ut")).forward(request,response);
    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException, ServletException {
        doGet(request, response);

    }




    public void destroy() {
    }
}