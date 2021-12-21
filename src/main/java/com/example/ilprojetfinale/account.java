package com.example.ilprojetfinale;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "account", value = "/account")
public class account extends HttpServlet {
    private String message;



    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("ut",request.getAttribute("ut"));
        request.getRequestDispatcher("account.jsp").forward(request,response);
    }

    public void destroy() {
    }
}