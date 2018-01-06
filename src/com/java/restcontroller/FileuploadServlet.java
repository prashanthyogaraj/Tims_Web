package com.java.restcontroller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import com.java.backend.*;
/**
 * Servlet implementation class FileuploadServlet
 */
@MultipartConfig
@WebServlet("/FileuploadServlet")
public class FileuploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ParseExcel ex =  new ParseExcel();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileuploadServlet() {
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
		HashMap<String,String> field = new HashMap<String,String>();
		File file = new File("C:/uploads/");
		if (!file.exists()) {
			file.mkdir();
		}
				
		String path = "C:/uploads/";
		String fname = null;
		String filepath = null;
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
				filepath = "C:/uploads/" + fname;
				try {
					String fieldname = item.getFieldName();
					field.put(fieldname, fname);
//					System.out.println("field name is"+item.getFieldName());
//					System.out.println("fname is"+fname);
					System.out.println("absolute path is" + filepath);
					item.write(new File(path + fname));
				} catch (Exception e) {
					// TODO Auto-generated catch block
//					e.printStackTrace();
				}
			}
			if(item.isFormField()){
				
				String os = item.getFieldName();
				String val = item.getString();
				field.put(os, val);
				
			}				
		}
		String victestid = field.get("victestid");
		String vicresultid = field.get("vicresultid");
		String vicfoldername = field.get("vicfile");
		String viccecid = field.get("viccec");
		String osctestid = field.get("osctestid");
		String oscresultid = field.get("oscresultid");
		String osfoldername = field.get("osfile");
		String oscecid = field.get("oscec");
		
		
		if((!osctestid.equals(""))){
//			System.out.println(partname);
			
			System.out.println("inside osc ostestid is"+osctestid);
			System.out.println("oscresultid is"+oscresultid);
			System.out.println("osfoldername is"+osfoldername);
			System.out.println("cec id"+oscecid);
			String fpath = filepath+osfoldername;
			System.out.println("inside osc path is"+fpath);
			try {
				ex.getnumberofSheet(fpath, osctestid, oscresultid, oscecid);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else if((!victestid.equals(""))){
		
//			System.out.println("vicname"+vicpart.getName());
			System.out.println("inside vic file path is"+filepath);
			System.out.println("victestid is"+victestid);
			System.out.println("vicresultid is"+vicresultid);
//			System.out.println("vicflder name is"+vicfoldername);
			System.out.println("cec id"+viccecid);
			try {
				ex.vicRegressionExcel(filepath, victestid, vicresultid, viccecid);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		String result = "Test case Updated Successfully";
		request.setAttribute("result", result);
		request.getRequestDispatcher("/TestcaseUpdate.jsp").forward(request, response);
	}

}
