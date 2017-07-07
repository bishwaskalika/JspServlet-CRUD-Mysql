<%@page import="com.leapforg.pms.entity.DAO.Impl.CustomerDAOImpl"%>
<%@page import="com.leapforg.pms.entity.DAO.CustomerDAO"%>

<%
   
    CustomerDAO customerDAO = new CustomerDAOImpl();
    String id = request.getParameter("cid").toString();
    
    if(customerDAO.delete(Integer.parseInt(id))>0){
        response.sendRedirect("index.jsp");
    }
 
%>
