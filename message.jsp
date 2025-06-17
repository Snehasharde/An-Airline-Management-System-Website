 <%
 
 String  message = (String)session.getAttribute("message");
  if(message != null)
  {
	  //prints
	  
	  out.println(message);
	  
	  session.removeAttribute("message");
  }
 
 %>