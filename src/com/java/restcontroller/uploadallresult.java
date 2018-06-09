package com.java.restcontroller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import com.java.backend.*;

/**
 * Servlet implementation class uploadallresult
 */
@MultipartConfig
@WebServlet("/uploadallresult")
public class uploadallresult extends HttpServlet {
	ParseExcel ex = new ParseExcel();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public uploadallresult() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		System.out.println("inside POST ");
		File file = new File("C:/uploadAll/");
		if (!file.exists()) {
			file.mkdir();
		}
				
		String path = "C:/uploadAll/";
		String fname = null;
		String filepath = null;
		String cec = null;
		List<FileItem> multiparts = null;
		try {
			multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
		} catch (FileUploadException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		for (FileItem item : multiparts) {
			if (!item.isFormField()) {
				fname = new File(item.getName()).getName();
				filepath = "C:/uploadAll/" + fname;
				try {
					String fieldname = item.getFieldName();
//					System.out.println("field name is"+item.getFieldName());
//					System.out.println("fname is"+fname);
//					System.out.println("absolute path is" + filepath);
					item.write(new File(path + fname));
				} catch (Exception e) {
					// TODO Auto-generated catch block
//					e.printStackTrace();
				}
			}
			if(item.isFormField()){
				
				cec = item.getString();
				
			}
			
		}
		System.out.println("path is"+filepath);
		System.out.println("cec is"+cec);
		try {
			ex.uploadAllResult(filepath, cec);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String allresult = "Results Updated Successfully";
		request.setAttribute("allresult", allresult);
		request.getRequestDispatcher("/Response.jsp").forward(request, response);
	}

}
