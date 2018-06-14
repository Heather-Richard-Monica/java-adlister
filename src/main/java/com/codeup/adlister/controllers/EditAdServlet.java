package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
            User user = (User) request.getSession().getAttribute("user");
            Ad ad = DaoFactory.getAdsDao().findById(Long.parseLong(request.getParameter("id")));
            ad.setTitle(request.getParameter("title"));
            ad.setDescription(request.getParameter("description"));

            DaoFactory.getAdsDao().editAd(ad);
            response.sendRedirect("/ads");

        }


    }

