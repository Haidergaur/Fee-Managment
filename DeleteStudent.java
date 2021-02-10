package servletss;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adapter.studentMethods;
import holder.studentParameter;

/**
 * Servlet implementation class DeleteStudent
 */

@MultipartConfig
@WebServlet("/DeleteStudent")
public class DeleteStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteStudent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();

	try
	{
		
	
		response.setContentType("text/html");
		//PrintWriter out=response.getWriter();
		int roll=-123;
		try
		{
			 roll=Integer.parseInt(request.getParameter("roll"));

		}
		catch(Exception e)
		{
			
		}
		if(roll==-123)
		{
			out.print("Enter valid Roll Number ");

		}
		else
		{

			int status=studentMethods.delete(roll);
			
			if(status!=0)
			{
				out.print("Delete successful");
			}
			else
				out.print("Record does not exist");
		}
		
	
	}
	catch(Exception e)
	{
		out.print("Please enter valid values");
	}
	
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
