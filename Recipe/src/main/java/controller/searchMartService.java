package controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/searchMartService")
public class searchMartService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String searchMart = request.getParameter("searchMart");
		
		String encodedSearchTerm = URLEncoder.encode(searchMart, "UTF-8");
        String url = "./map.jsp?searchMart=" + encodedSearchTerm;
        response.sendRedirect(url);
		
	}

}
