<%@page import="com.leapforg.pms.entity.DAO.Impl.CustomerDAOImpl"%>
<%@page import="com.leapforg.pms.entity.DAO.CustomerDAO"%>
<%@page import="com.leapforg.pms.entity.Customer"%>

<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        Customer cus = new Customer();
        cus.setFull_name(request.getParameter("full_name"));
        cus.setDob(request.getParameter("dob"));
        cus.setEmail(request.getParameter("email"));
        cus.setPassword(request.getParameter("password"));
        cus.setAddress(request.getParameter("address"));
        cus.setContact(request.getParameter("contact"));
        
        CustomerDAO serviceDAO = new CustomerDAOImpl();
        serviceDAO.insert(cus);
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }

%>