<%@page import="com.leapforg.pms.entity.DAO.Impl.CustomerDAOImpl"%>
<%@page import="com.leapforg.pms.entity.DAO.CustomerDAO"%>
<%@page import="com.leapforg.pms.entity.Customer"%>

<%
    Customer customer = new Customer();

    CustomerDAO customerDAO = new CustomerDAOImpl();
    if(request.getMethod().equalsIgnoreCase("get")){
    if (request.getParameter("cid") == null) {
        response.sendRedirect("index.jsp?error");
    } else {
        int id = Integer.parseInt(request.getParameter("cid"));
        customer = customerDAO.getById(id);
        if (customer == null) {
            response.sendRedirect("index.jsp?error");
        }
    }
    }else{
        
        customer.setCid(Integer.parseInt(request.getParameter("cid")));
        customer.setFull_name(request.getParameter("full_name"));
        customer.setDob(request.getParameter("dob"));
        customer.setEmail(request.getParameter("email"));
        customer.setPassword(request.getParameter("password"));
        customer.setAddress(request.getParameter("address"));
        customer.setContact(request.getParameter("contact"));
        customerDAO.update(customer);
        
        
        response.sendRedirect("index.jsp");
        
    }
    

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        
        <script type="text/javascript">
            function isNumber(evt) {
                evt = (evt) ? evt : window.event;
                var charCode = (evt.which) ? evt.which : evt.keyCode;
                if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                    return false;
                }
                return true;
            }
        </script>

        <script language="Javascript" type="text/javascript">

            function onlyAlphabets(e, t) {
                try {
                    if (window.event) {
                        var charCode = window.event.keyCode;
                    } else if (e) {
                        var charCode = e.which;
                    } else {
                        return true;
                    }
                    if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
                        return true;
                    else
                        return false;
                } catch (err) {
                    alert(err.Description);
                }
            }

        </script>

    </head>
    <body>
        <div class="container">
            <h1>Edit Page</h1>
            <form method="post" action="">
                <div class="form-group">
                    <label>Full Name</label>
                    <input type="text" name="full_name" maxlength="50" class="form-control" required="required" placeholder="FullName" value="<%=customer.getFull_name()%>" onkeypress="return onlyAlphabets(event, this);" />
                </div>
                <div class="form-group">
                    <label>Date of Birth</label>
                    <input type="date" name="dob" maxlength="50" class="form-control" required="required" placeholder=" Date of Birth" value="<%=customer.getDob()%>" />
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="email" maxlength="50" class="form-control" required="required" placeholder="Email"value="<%=customer.getEmail()%>" />
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password"  maxlength="50" class="form-control" required="required" placeholder="Password" value="<%=customer.getPassword()%>" />
                </div>
                <div class="form-group">
                    <label>Address</label>
                    <input type="text" name="address" maxlength="50" class="form-control" required="required" placeholder="address" value="<%=customer.getAddress()%>" />
                </div>
                <div class="form-group">
                    <label>Contact</label>
                    <input type="text" name="contact" maxlength="10" class="form-control" required="required" onkeypress="return isNumber(event)" placeholder="contact" value="<%=customer.getContact()%>" />
                </div>
                <input type="hidden" name="id" value="<%=customer.getCid()%>"/>
                <button type="submit" class="btn btn-success">Save</button>
            </form>

        </div>
    </body>
</html>
