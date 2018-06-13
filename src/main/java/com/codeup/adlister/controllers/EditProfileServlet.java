package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (name = "controllers.EditProfileServlet", urlPatterns = "/editprofile")
public class EditProfileServlet extends HttpServlet{
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    if(request.getSession().getAttribute("user")== null){
        response.sendRedirect("/login");
        return;
    }

    String username = request.getParameter("username");
    User user = DaoFactory.getUsersDao().findByUsername(username);
    request.setAttribute("user", user);
    request.getRequestDispatcher("/WEB-INF/editprofile.jsp").forward(request, response);
}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User)request.getSession().getAttribute("user");
        String oldUsername = user.getUsername();
        user = DaoFactory.getUsersDao().findByUsername(oldUsername);
        user.setUsername(request.getParameter("username"));
        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));

        DaoFactory.getUsersDao().editUser(user);
        response.sendRedirect("/profile");

}

}
