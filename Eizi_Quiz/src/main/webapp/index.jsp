<%@page import="com.UserDAO"%>
<%@page import="com.AdminDAO"%>
<body>
<html>
    <head>
        <title>Registration Form</title>
        <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
        <link rel="StyleSheet" href="style.css">
    </head>
    <body>
       
        <div class="container">
            <h1 class="form-title">User Registration</h1>
            <form action="registerDAO.jsp" name="register" onsubmit="return check()">
                <div class="main-user-info">
                   
                    <div class="user-input-box">
                        <label for="FirstName">FirstName : </label>
                        <input type="text" name="Fname" placeholder="Enter FirstName"/>
                    </div>
                    <div class="user-input-box">
                        <label for="LastName">LastName : </label>
                        <input type="text" name="Lname" placeholder="Enter LastName"/>
                    </div>
                    <div class="user-input-box">
                        <label for="USN">USN : </label>
                        <input type="text" name="USN" placeholder="Enter USN"/>
                    </div>
                    <div class="user-input-box">
                        <label for="Degree">Degree : </label>
                        <input type="text" name="Degree" placeholder="Enter Degree"/>
                    </div>
                    <div class="user-input-box">
                        <label for="Branch">Branch : </label>
                        <input type="text" name="Branch" placeholder="Enter Password"/>
                    </div>
                    <div class="user-input-box">
                        <label for="Percentage">Percentage : </label>
                        <input type="text" name="Percentage" placeholder="Enter Percentage"/>
                    </div>
                    <div class="user-input-box">
                        <label for="College">College : </label>
                        <input type="text" name="pass" placeholder="Enter College"/>
                    </div>
                    <div class="user-input-box">
                        <label for="Passout">Passout : </label>
                        <input type="text" name="Passout" placeholder="Enter Passout year"/>
                </div>
                <div class="user-input-box">
                    <label for="Mail_id">Mail_id : </label>
                    <input type="text" name="Mail_id" placeholder="Enter Mail_id"/>
            </div>
            <div class="user-input-box">
                <label for="Mobile_No">Mobile_No : </label>
                <input type="text" name="Mobile_No" placeholder="Enter Mobile_No"/>
        </div> 
        <div class="user-input-box">
            <label for="Location">Location : </label>
            <input type="text" name="Location" placeholder="Enter Location"/>
    </div> 
    
                <div class="user-input-box">
                   <label>Gender</label>
                    <select>

                        <option for="Gender">Select</option>
                        <option>Male</option>
                        <option>Female</option>
                        <option>Other</option>
                    </select>
                   
                </div>

                <div class="form-submit-btn">
                  
                    <input type="submit" value="Register">
                </div>
            </form>
        </div>
    </body>
</html>

	<script type="text/javascript">
    	function check(){
    		if(document.register.name.value.length<5){
    			alert("minimum name length must be 5 characters");
    			return false;
    		}
    		
            if(document.register.name.value.length>50){
                alert("maximum name length must be 50 characters");
                return false;
            }

            if(document.register.email.value.length>50){
                alert("maximum email length must be 50 characters");
                return false;
            }            
    	}
	</script>

        <%
        String status=request.getParameter("status");
        
        if(status!=null){
        	if(status.equals("false")){%>
        		<p style="color:red">Some error occurred!</p>
        	<%}
        	else if(status.equals("registered")){%>
        		<p style="color:red">Email already registered!</p>
        	<%}
        }
        %>
        </div>
        
    </div>
    
</body>

</html>