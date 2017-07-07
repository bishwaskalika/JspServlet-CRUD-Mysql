<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Customer</title>
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

           
           

        </script>

    </head>
    <body>
        <div class="container">
            <h1>Insert New Customer</h1>
            <form method="post" action="customer_insert_backend.jsp">

                <div class="form-group">
                    <label>Full Name</label>
                    <input type="text" name="full_name" maxlength="50" class="form-control" required="required" placeholder="Full Name" onkeypress="return onlyAlphabets(event, this);" />
                </div>
                <div class="form-group">
                    <label>Date of birth</label>
                    <input type="date" name="dob" maxlength="30"  class="form-control"  placeholder="Date of birth" />
                </div>
                 <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="email" maxlength="50" class="form-control" required="required" placeholder="Email" />
                </div>
                 <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" maxlength="50" class="form-control" required="required" placeholder="Password" />
                </div>
                 <div class="form-group">
                    <label>Address</label>
                    <input type="text" name="address" maxlength="50" class="form-control" required="required" placeholder="Address" />
                </div>
                 <div class="form-group">
                    <label>Contact</label>
                    <input type="text" name="contact" maxlength="10" class="form-control" required="required" placeholder="Contact" onkeypress="return isNumber(event)" />
                </div>
                <button type="submit" class="btn btn-success">Save</button>
            </form>

        </div>
    </body>
</html>




