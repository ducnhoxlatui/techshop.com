package vn.demo.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import vn.demo.business.User;

public class EmailListServer extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url ="/index.html";
        // nhan su kien
        String action = request.getParameter("action");
        if(action== null){
            action= "join";
        }
        if(action.equals("join")){
            url = "/index.html";
        }
        else if(action.equals("add")){
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            User user = new User(firstName,lastName,email);
            request.setAttribute("user",user);
            url="/thank.jsp";
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request,response);
        //
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        doPost(request,response);
    }
}
