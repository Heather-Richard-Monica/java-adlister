package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


    @WebServlet(name = "controllers.EditAdServlet", urlPatterns = "/ads/edit")
    public class EditAdServlet extends HttpServlet{
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            if (request.getSession().getAttribute("user") == null) {
                response.sendRedirect("/login");
                return;
            }

            long id = Long.parseLong(request.getParameter("id"));
            Ad ad = DaoFactory.getAdsDao().findById(id);
            request.setAttribute("ad", ad);
            request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);
        }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
            User user = (User) request.getSession().getAttribute("user");
            Ad ad = DaoFactory.getAdsDao().findById(Long.parseLong(request.getParameter("id")));
            ad.setTitle(request.getParameter("title"));
            ad.setDescription(request.getParameter("description"));

            DaoFactory.getAdsDao().editAd(ad);
            response.sendRedirect("/ads");


        }

}

