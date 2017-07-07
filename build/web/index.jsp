
<%@page import="com.leapforg.pms.entity.DAO.Impl.CustomerDAOImpl"%>
<%@page import="com.leapforg.pms.entity.Customer"%>
<%@page import="com.leapforg.pms.entity.DAO.CustomerDAO"%>
<body>
    <%@include file="header.jsp"  %>

    <div class="container">
    <!- Customer Table -!>    
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                         <br/><br/><br/>
                        <div class="header">
                            <h4 class="title">Customer Table</h4>

                        </div>
                        <br/> <br/><br/><br/>
                        <a href="customer_insert.jsp" class="btn btn-info"><span class="glyphicon glyphicon-plus"></span></a>
                        <br/><br/><br/>
                        <div class="content table-responsive table-full-width">


                            <table class="table table-bordered table-striped table-condensed">
                                <tr>
                                    <th>Id</th>
                                    <th>full_name</th>
                                    <th>Date of Birth</th>
                                    <th>Email</th>
                                    <th>Password</th>
                                    <th>Address</th>
                                    <th>Contact</th>
                                    <td>Action</td>

                                </tr>
                                <%
                                    CustomerDAO customerDAO = new CustomerDAOImpl();
                                    for (Customer s : customerDAO.getAll()) {
                                %>

                                <tr>
                                    <td><%=s.getCid()%></td>
                                    <td><%=s.getFull_name()%> </td>
                                    <td><%=s.getDob()%></td>
                                    <td><%=s.getEmail()%></td>
                                    <td><%=s.getPassword()%></td>
                                    <td><%=s.getAddress()%></td>
                                    <td><%=s.getContact()%></td>

                                    <td>
                                        <a href="customeredit.jsp?cid=<%=s.getCid()%>" class="btn btn-success"><span class="glyphicon glyphicon-pencil"></span> Edit</a>
                                        <a href="customerdelete.jsp?cid=<%=s.getCid()%>" onclick="return confirm('Are you sure want to delete it?')" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Delete</a>
                                    </td>


                                </tr>
                                <%  }
                                %>
                            </table>

                        </div>
                    </div>
                </div>

</div>



                </body>
                </html>