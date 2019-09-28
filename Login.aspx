<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
        <link rel="Stylesheet" type="text/css" href="css/animate-custom.css" />
  
    <link rel="Stylesheet" type="text/css" href="css/demo.css" />
    <link rel="Stylesheet" type="text/css" href="css/style.css" />
    <link rel="Stylesheet" type="text/css" href="css/style2.css" />
    <link rel="Stylesheet" type="text/css" href="css/style3.css" />
    <script language="javascript" type="text/javascript">
<script language="javascript" type="text/javascript">
    function validate() {
        if (document.getElementById("<%=txtUserName.ClientID%>").value == "") {
            alert("Enter UserName");
            document.getElementById("<%=txtUserName.ClientID%>").focus();
            return false;
        }
        if (document.getElementById("<%=txtPassword.ClientID %>").value == "") {
            alert("Enter Password");
            document.getElementById("<%=txtPassword.ClientID %>").focus();
            return false;
        }
    }

  //To TitleCase
  function titleCase(element)
   {
      var txt = element.value;
      var spl = txt.split(" ");
      var upstring = "";
      for (var i = 0; i < spl.length; i++) {
          try { //onkeypress will cause an error on first keypress
              upstring += spl[i][0].toUpperCase();

          } catch (err) { }
          upstring += spl[i].substring(1, spl[i].length);
          upstring += " ";

      }
      element.value = upstring.substring(0, upstring.length - 1);
  }
 </script>
    <script language="javascript" type="text/javascript">
 
   function titleCase(element) {
      var txt = element.value;
      var spl = txt.split(" ");
      var upstring = "";
      for (var i = 0; i < spl.length; i++) {
          try { //onkeypress will cause an error on first keypress
              upstring += spl[i][0].toUpperCase();

          } catch (err) { }
          upstring += spl[i].substring(1, spl[i].length);
          upstring += " ";

      }
      element.value = upstring.substring(0, upstring.length - 1);
  }
 
 
 </script>
    
</head>
<body>  
<form id="form1" runat="server">
        <div class="container">
            <!-- Codrops top bar -->
         
            <header>
            </header>
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                         
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > UserName</label>
                                   <%-- <input id="txtUserName" name="username" required="required" type="text" placeholder="Type UserName"  onblur="titleCase(this)"/>--%>
                                   <asp:TextBox ID="txtUserName" runat="server"  placeholder="Type UserName"  onblur="titleCase(this)"></asp:TextBox>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Password </label>
                                    <%--<input id="txtPassword" name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> --%>
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="eg. X8df!90EO" ></asp:TextBox>
                                </p>
                             
                                <p class="login button"> 
                                      <asp:Button ID="btnLogin" runat="server" CssClass="button" onclick="btnLogIn_Click"     OnClientClick="return validate()" Text="Login"  />
                                      
								</p>
                             
                                </div>  
                                </div>
                                </div>
                                </section>
                                </div>
                               
                            </form>
                        
            
       </body>
</html>
