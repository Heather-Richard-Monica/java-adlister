package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (name ="controllers.PasswordServlet", urlPatterns = "/password")
public class PasswordServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        if(request.getSession().getAttribute("user")== null){
            response.sendRedirect("/login");
            return;
        }

        String username = request.getParameter("username");
        User user = DaoFactory.getUsersDao().findByUsername(username);
        request.setAttribute("user", user);
        request.getRequestDispatcher("/WEB-INF/password.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User)request.getSession().getAttribute("user");
        String username = user.getUsername();
        String password = request.getParameter("password");
        String oldPassword = request.getParameter("oldpassword");
        String newPassword = request.getParameter("newpassword");
        String confirmPassword = request.getParameter("confirm_password");
        user = DaoFactory.getUsersDao().findByUsername(request.getParameter(username));

            boolean inputHasErrors = password.isEmpty() || (!newPassword.equals(confirmPassword));
            boolean validAttempt = Password.check(password, user.getPassword());
            if (validAttempt && inputHasErrors) {
                request.setAttribute("password", newPassword);
                user.setPassword(newPassword);
                DaoFactory.getUsersDao().editUser(user);
                response.sendRedirect("/profile");
            } else {
                response.sendRedirect("/password");
            }


    }

}
