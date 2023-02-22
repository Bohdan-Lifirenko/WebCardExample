package com.example.webcardexample;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;


public class CartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("cartContentPage.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");

            cart.addProduct(
                new Product((String) request.getParameter("product_name"))
            );

            // Set the cart object as an attribute in the request
            request.setAttribute("cart", cart);

            RequestDispatcher dispatcher = request.getRequestDispatcher("cartContentPage.jsp");
            dispatcher.forward(request, response);
    }
}
