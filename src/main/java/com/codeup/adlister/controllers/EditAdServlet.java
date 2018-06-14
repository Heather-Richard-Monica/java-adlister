package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name= "EditAdServlet", urlPatterns = "/edit")
public class EditAdServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        long userId = (long)request.getSession().getAttribute("userId");
        request.setAttribute("userAds", DaoFactory.getAdsDao().findAdbyUserID(userId));

        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);
    }

    }

