package com.example.ilprojetfinale;


import com.example.ilprojetfinale.model.user;
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

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class editaccount extends HttpServlet {
    private String message;



    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String k= (String) request.getParameter("ut");
        user p=null;
        sql sql =new sql();
        Statement stmt =sql.connexionsahbi();

        ResultSet res= null;
        try {
            res = stmt.executeQuery("select *  from utilisateur where id="+k);
            System.out.println(res);

            // id produit prix description type;
            while (res.next()) {
                //     id, String username, String mail, String password, Double phone, String adress
                p=new user(Integer.parseInt(res.getString("id")),res.getString("username"),res.getString("mail"),res.getString("password"),Long.parseLong ( res.getString("phone")),res.getString("adress"));
                // System.out.println(p.getPrix());
                //   System.out.println( p.getProduit());
                //System.out.println( p.getType());

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        //System.out.println(p.getProduit());
        request.setAttribute("p",p);
        request.setAttribute("ut",request.getParameter("ut"));

        request.getRequestDispatcher("editcontact.jsp").forward(request,response);
    }

    public void destroy() {
    }
}