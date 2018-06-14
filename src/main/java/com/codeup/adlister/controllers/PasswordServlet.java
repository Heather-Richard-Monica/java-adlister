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
//        String password = request.getParameter("password");
        String oldPassword = request.getParameter("oldpassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");
        user = DaoFactory.getUsersDao().findByUsername(username);


        System.out.println(oldPassword);
        System.out.println(newPassword);
        System.out.println(confirmPassword);
        System.out.println(user.getPassword());
            boolean inputHasErrors = oldPassword.isEmpty() || (!newPassword.equals(confirmPassword));
            boolean validAttempt = Password.check(oldPassword, user.getPassword());
            if (validAttempt && !inputHasErrors) {
                user.setPassword(newPassword);
                DaoFactory.getUsersDao().editUser(user);
                response.sendRedirect("/profile");
            } else {
                response.sendRedirect("/password");
            }


    }

}
