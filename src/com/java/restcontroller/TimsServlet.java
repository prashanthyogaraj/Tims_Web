package com.java.restcontroller;

import java.io.IOException;
import java.io.PrintWriter;

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
		UpdateXml xm = new UpdateXml();
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/plain");
		String cecid=request.getParameter("cec");
		String testid = request.getParameter("tid");
		String testtitle = request.getParameter("title");
		String status = request.getParameter("status");
		String bugid = request.getParameter("bug");
		System.out.println("name is"+cecid);
		System.out.println("tid is"+testid);
		System.out.println("title is"+testtitle);
		System.out.println("ststus is"+status);
		System.out.println("bug id is"+bugid);
		try {
			 String output = xm.startParser(cecid, testid, testtitle, status,bugid);
			 System.out.println("output is"+output);
			 request.setAttribute("output", output);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.setContentType("text/xml");
		request.getRequestDispatcher("/Response.jsp").forward(request, response);
//		response.sendRedirect("ResultPage.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/plain");
		ParseExcel ex = new ParseExcel();
		
		String btn1 = request.getParameter("Test Case Upload");
		String btn2 = request.getParameter("Test Reuslt Upload");
		String btn3 = request.getParameter("HOME");

		
		if(request.getParameter("Test Case Upload")!= null){
			System.out.println("Test Case upload");
			response.sendRedirect("TestcaseUpdate.jsp");
		}
		else if(request.getParameter("Test Reuslt Upload")!= null){
			System.out.println("Test Result Upload");
			response.sendRedirect("ResultPage.jsp");
		}
		
		else if(request.getParameter("Upload All Result")!= null){
			System.out.println("Upload All Result");
			response.sendRedirect("uploadallresult.jsp");
		}
		
		

	}
}
