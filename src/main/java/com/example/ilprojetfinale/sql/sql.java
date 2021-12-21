package com.example.ilprojetfinale.sql;

import java.sql.*;
import com.mysql.jdbc.Driver;

public class sql {
    Statement statement;
    private Statement st=null;

    public Statement getSt() {
        return st;
    }
     public Statement connexionsahbi() {


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
             Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/"
                    + "iljee?user=root&password=root");
            statement = conn.createStatement();
         //   ResultSet res=statement.executeQuery("select *  from user");



        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();

        }
         return statement;


    }
    public Connection connexionsahbi1() {
Connection conn =null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/"
                    + "iljee?user=root&password=root");

            //   ResultSet res=statement.executeQuery("select *  from user");



        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();

        }
        return conn;


    }








    /*
    String requette;

    public sql(String  requette) {

this.requette=requette;

    }


    public  void salah() throws ClassNotFoundException, SQLException {

            Class.forName("com.mysql.cj.jdbc.Driver");


            Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1/iljee", "root", "root");

            Statement statement = connection.createStatement();

            System.out.print("wa sahbi");

            ResultSet res = statement.executeQuery("select *  from user ");

            String res1 = "";
            while (res.next()) {
                //  res1=  res1+"  "+ res.getString("password");
                System.out.println(res.getString("password"));

            }*/

        }
