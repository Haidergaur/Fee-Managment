<%@page import="paytm_java.PaytmConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page errorPage="error_page.jsp" %>  
    
<%@ page import="java.util.*,com.paytm.pg.merchant.CheckSumServiceHelper"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="adapter.Database" %>
<%@ page import="java.sql.PreparedStatement" %>

<%




Enumeration<String> paramNames = request.getParameterNames();
Map<String, String[]> mapData = request.getParameterMap();
TreeMap<String,String> parameters = new TreeMap<String,String>();

String paytmChecksum =  "";
while(paramNames.hasMoreElements()) {
	String paramName = (String)paramNames.nextElement();
	if(paramName.equals("CHECKSUMHASH")){
		paytmChecksum = mapData.get(paramName)[0];
	}else{
		parameters.put(paramName,mapData.get(paramName)[0]);
	}
}
//out.print(paytmChecksum);


HttpSession session2=request.getSession(false);  
 //ck[0].getValue();  
 String n=(String)session.getAttribute("student");  
//System.out.print(n);
out.print(n);

 

boolean isValideChecksum = false;
String outputHTML="";
try{
	isValideChecksum = CheckSumServiceHelper.getCheckSumServiceHelper().verifycheckSum(PaytmConstants.MERCHANT_KEY,parameters,paytmChecksum);
	if(isValideChecksum && parameters.containsKey("RESPCODE")){
		if(parameters.get("RESPCODE").equals("01")){
			outputHTML = parameters.toString();
		
/* 
			String a=request.getParameter("TXN_AMOUNT");
			Connection con=Database.getCon();
			PreparedStatement ps=con.prepareStatement("insert into VideoData(name,VideoLink) values(?,?)");
			ps.setString(1,"go");
			ps.setString(2,a);	
			int status=ps.executeUpdate();
			con.close(); */
			
			

			
			
		}else{
			outputHTML="<b>Payment Failed.</b>";
		}
	}else{
		outputHTML="<b>Checksum mismatched.</b>";
	}
}catch(Exception e){
	outputHTML=e.toString();
	out.print(e);
	System.out.print("this is exception " + e);
	
}
/* try
{
	

Cookie ck[]=request.getCookies();
//out.print(ck[0].getValue());
}
catch(Exception e){
	out.print(e);
}
 */


session2.invalidate();
ServletContext context=getServletContext();  
String n1=(String)context.getAttribute("company");  
out.print(n1);

HttpSession s=request.getSession();
s.setAttribute("student", n1);
out.print(s.getAttribute("student"));

//request.getRequestDispatcher("Student_W_Login.jsp").forward(request,response);
response.sendRedirect("Student_W_Login.jsp");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <%= outputHTML %>
 --%>
<center>
    <h1>Thank you!</h1>
<a href="Student_W_Login.jsp">
   <button class="button" style="vertical-align:middle"><span>return  </span>  </button>
</a>    
</center>
</body>
</html>