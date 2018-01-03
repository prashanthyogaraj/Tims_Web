package com.java.restcontroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.java.backend.*;
/**
 * Servlet implementation class TimsServlet
 */
@WebServlet("/TimsServlet")
public class TimsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TimsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.getWriter().append("Served at: ").append(request.getContextPath());

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ParseExcel ex = new ParseExcel();
		String btn1 = request.getParameter("Test Case Upload");
		String btn2 = request.getParameter("Test Reuslt Upload");
		String btn3 = request.getParameter("HOME");
		System.out.println("btn 3 is"+btn3);
		if(request.getParameter("Test Case Upload")!= null){
			System.out.println("Test Case upload");
		}
		else if(request.getParameter("Test Reuslt Upload")!= null){
			System.out.println("Test Result Upload");
			response.sendRedirect("ResultPage.jsp");
		}
		if (request.getParameter("HOME")=="HOME"){
			response.sendRedirect("landing.jsp");
		}
		
		doGet(request, response);
	}

}
