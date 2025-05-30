<%-- 
    Document   : RegisterLoginForm
    Created on : 4 Feb, 2016, 8:27:46 PM
    Author     : Java
--%>

<%@page import="com.commondb.Common_DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>SoftWare Puzzle</title>
    
        <link rel="stylesheet" href="css/Login_1.css">
        
        <script type="text/javascript">
               

</script>
        


</head>
<body>


<div class="wrapper">
	<div class="container">
		<h1>User Registration Form</h1>
		
		<form  method="post" action="Registration" enctype="multipart/form-data" >
                    
                   
			<input type="text" required title="Username required"  placeholder="Username " name="UserName" id="RegUname" >
			<input type="password" required title="Password required"  placeholder="Password" name="PassWord" id="RegUpass">
                        
                        
                         
                        
                        
                        
                        
                       
                                 
                                   
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
<!----- Date Of Birth -------------------------------------------------------->
<tr>
    <td><div align="center">DATE OF BIRTH</div></td>
 
<td>
<select name="dob" id="dob">
<option value="-1">Day:</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
 
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
 
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
 
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
 
<option value="31">31</option>
</select>
 
<select id="dob1" name="dob1">
<option value="-1">Month:</option>
<option value="January">Jan</option>
<option value="February">Feb</option>
<option value="March">Mar</option>
<option value="April">Apr</option>
<option value="May">May</option>
<option value="June">Jun</option>
<option value="July">Jul</option>
<option value="August">Aug</option>
<option value="September">Sep</option>
<option value="October">Oct</option>
<option value="November">Nov</option>
<option value="December">Dec</option>
</select>
 
<select name="dob2" id="dob2">
 
<option value="-1">Year:</option>
<option value="2012">2014</option>
<option value="2011">2013</option>
<option value="2012">2012</option>
<option value="2011">2011</option>
<option value="2010">2010</option>
<option value="2009">2009</option>
<option value="2008">2008</option>
<option value="2007">2007</option>
<option value="2006">2006</option>
<option value="2005">2005</option>
<option value="2004">2004</option>
<option value="2003">2003</option>
<option value="2002">2002</option>
<option value="2001">2001</option>
<option value="2000">2000</option>
 
<option value="1999">1999</option>
<option value="1998">1998</option>
<option value="1997">1997</option>
<option value="1996">1996</option>
<option value="1995">1995</option>
<option value="1994">1994</option>
<option value="1993">1993</option>
<option value="1992">1992</option>
<option value="1991">1991</option>
<option value="1990">1990</option>
 
<option value="1989">1989</option>
<option value="1988">1988</option>
<option value="1987">1987</option>
<option value="1986">1986</option>
<option value="1985">1985</option>
<option value="1984">1984</option>
<option value="1983">1983</option>
<option value="1982">1982</option>
<option value="1981">1981</option>
<option value="1980">1980</option>
</select>
</td>
</tr>
              <br>
			<br>
                        
                        <!----- GENDER---------------------------------------------------------->

<div>
 <tr>
                        <td>
                            <div align="center">GENDER</div>
                        </td>
                        
                        <td>
                            <label for="Gender"></label>
                            <select name="Gender">
                                <option value="">--GENDER---</option>
                             
                                <option value="Male" required title="Username required">MALE</option>
                                <option value="Female">FEMALE</option>
                            
                            </select>
                        </td
                         <br>  
                                                  <br>  
                                                   <br>
                                                   
 <input type="text" required title="AGE required"  placeholder="Enter The Age" name="Age" id="RegUpass" >
                         <br>
    
    
                        
              
                        <input type="text" required title="E MAIL ID required"  placeholder="E MAIL ID " name="email" id="RegUpass" >
                        <input type="text" required title="MOBILE NO "  placeholder="MOBILE NO" name="mobileno" id="RegUpass"maxlength="10" >
                        <input type="text" required title="ADDRESS required"  placeholder="ENTER ADDRESS " name="Address" id="RegUpass">
                        <input type="text" required title="CITY required"  placeholder="ENTER CITY " name="city" id="RegUpass">
                        <input type="text" required title="state required"  placeholder="ENTER STATE " name="state" id="RegUpass">
                        <input type="text" required title="NATION required"  placeholder="ENTER NATION" name="nation" id="RegUpass">
                        
                       <!-- <td><div align="center">SELECT PUZZLE IMAGE </div></td>  
                         
                        <input type="file"   name="Pimage" id="RegUpass " accept="image/*"> -->
                      

   
		    <button type="submit" value="LogIn" id="Ulogin">Submit </button>
		    	    	    
			<br>
			<br>
				
				<a href="Index.jsp">Home</a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				
				<a href="RegisterLoginForm.jsp">Reset</a>
			<br>
			<br>
			
			
			 
			
			

		</form>
		
		
		
		
		
	</div>
					
	
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
    
    
   <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

     
        <script src="js/Login.js"></script>

</body>
</html>