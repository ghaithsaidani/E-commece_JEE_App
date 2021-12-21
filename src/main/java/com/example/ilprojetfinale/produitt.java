package com.example.ilprojetfinale;

import com.example.ilprojetfinale.model.produit;
import com.example.ilprojetfinale.sql.sql;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet(name = "produitt", value = "/produitt")

public class produitt extends HttpServlet {

        private String message;



        public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

          // request.setAttribute("produit",);

          int k= Integer.parseInt(request.getParameter("id"));
            produit p=null;
            System.out.println("select *  from produit where id="+k);
                sql sql =new sql();
               Statement stmt =sql.connexionsahbi();

                ResultSet res= null;
                try {
                        res = stmt.executeQuery("select *  from produit where id="+k);
                    System.out.println(res);

                    // id produit prix description type;
                while (res.next()) {
                    p=new produit(Integer.parseInt(res.getString("id")),res.getString("produit"),Float.parseFloat( res.getString("prix")),res.getString("description"),res.getString("type"));
                    System.out.println(p.getPrix());
                    System.out.println( p.getProduit());
                    System.out.println( p.getType());

                }
                } catch (SQLException e) {
                        e.printStackTrace();
                }

            System.out.println(p.getProduit());
request.setAttribute("p",p);
            request.setAttribute("ut",request.getParameter("ut"));

            request.getRequestDispatcher("produit.jsp").forward(request,response);
        }

        public void destroy() {
        }

}
