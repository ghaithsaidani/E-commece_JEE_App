package com.example.ilprojetfinale;


import com.example.ilprojetfinale.model.produit;
import com.example.ilprojetfinale.sql.sql;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;

@WebServlet(name ="registre", value = "/registre")
public class registre  extends HttpServlet {
    private String message;
    Connection conn;
    Statement stmt;

    @Override
    public void init() throws ServletException {
       /* try {
           ResultSet res=st.executeQuery("select *  from user");
            while (res.next()) {
              System.out.println( res.getString("password"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } */
    }

    /*
         try {


             Class.forName("com.mysql.cj.jdbc.Driver");

         Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/iljee", "root", "root");

         statement = connection.createStatement();
         } catch (SQLException | ClassNotFoundException e) {
             e.printStackTrace();
         }


     }*/
    @Override


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //  ArrayList<produit> ls = new ArrayList<>();
        String res11 = "";

        try {

            sql sql = new sql();
            stmt = sql.connexionsahbi();
            ResultSet res = stmt.executeQuery("select *  from utilisateur where username='" + request.getParameter("username") + "'");

            while (res.next()) {
                res11 = res11 + res.getString("username");

            }

            if ((res11.equals(request.getParameter("username")))) {
                System.out.println("salah1");
                request.setAttribute("message", "compte deja entre");
                request.getRequestDispatcher("registre.jsp").forward(request, response);

            } else {
                Connection cnx = sql.connexionsahbi1();

                //File f=new File("/home/prashant/Documents/image/mainjava.jpg");
               //FileInputStream  fs=new FileInputStream(f);

               //PreparedStatement ps= cnx.prepareStatement("INSERT INTO salah(id,img) VALUES(?,?,?)");
                //ps.setString(1, "1");
                //ps.setBinaryStream(2,fs,(int)f.length());
                //ps.executeUpdate();

                PreparedStatement pr = cnx.prepareStatement(" INSERT INTO utilisateur( `username`, `mail`, `password`, `phone`, `adress`) VALUES ('" + request.getParameter("username") + "','" + request.getParameter("email") + "','" + request.getParameter("pass") + "'," + request.getParameter("phone") + ",'" + request.getParameter("adress") + "')");
                System.out.println("salah7");

                pr.execute();

                System.out.println("salah8");

                //  String startDateStr = request.getParameter("startDate");
                //SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//surround below line with try catch block as below code throws checked exception
                //Date startDate = sdf.parse(startDateStr);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            System.out.println("mchiittzamer");
            e.printStackTrace();




    }}
    public void destroy() {
    }
}