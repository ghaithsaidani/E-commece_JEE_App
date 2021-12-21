package com.example.ilprojetfinale;

import com.example.ilprojetfinale.model.produit;
import com.example.ilprojetfinale.model.user;
import com.example.ilprojetfinale.sql.sql;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
@MultipartConfig
@WebServlet(name = "acceuilleServlet", value = "/acceuilleServlet")
public class acceuilleServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


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
                p=new user(Integer.parseInt(res.getString("id")),res.getString("username"),res.getString("mail"),res.getString("password"), Long.parseLong ( res.getString("phone")),res.getString("adress"));
               // System.out.println(p.getPrix());
             //   System.out.println( p.getProduit());
                //System.out.println( p.getType());

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        //System.out.println(p.getProduit());
        request.setAttribute("p",p);
        request.setAttribute("ut",request.getAttribute("ut"));


            request.getRequestDispatcher("account.jsp").forward(request, response);

        }}

