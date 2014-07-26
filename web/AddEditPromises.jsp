<%-- 
    Document   : AddEditPromises
    Created on : Jul 25, 2014, 12:27:25 AM
    Author     : prakush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<center>
<s:form action="PromisesValidator" method="POST" >
    <s:textfield name="cID" label="Enter Your Candidate ID *"  />
    <s:textarea name="promises" label="Promises " cols="50" rows="10"/>
    <s:submit value="Submit" />
</s:form>
    
 </center>    