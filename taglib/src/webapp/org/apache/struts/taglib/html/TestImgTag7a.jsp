<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="junit.framework.Assert" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<!-- --------Testing attributes using srcKey ------ -->
<logic:equal name="runTest" value="testImgSrcKeyNameNoScope">
    <bean:define id="TEST_RESULTS" toScope="page">
        <html:img srcKey="default.testing.image" name="paramMapNoScope"/>
    </bean:define>
    <bean:define id="thisMap1" name="paramMapNoScope" type="java.util.Map"/>
    <bean:define id="EXPECTED_RESULTS" toScope="page">
        <img src="<%=org.apache.struts.taglib.TagUtils.getInstance().computeURL(pageContext, null, "/images/default/default/myimage.gif", null, null, null, thisMap1, null, false)%>">
    </bean:define>
</logic:equal>

<logic:equal name="runTest" value="testImgSrcKeyNamePropertyNoScope">
    <bean:define id="TEST_RESULTS" toScope="page">
        <html:img srcKey="default.testing.image"
                  name="paramPropertyMapNoScope" property="map"/>
    </bean:define>
    <bean:define id="thisMap2" name="paramPropertyMapNoScope" property="map"
                 type="java.util.Map"/>
    <bean:define id="EXPECTED_RESULTS" toScope="page">
        <img src="<%=org.apache.struts.taglib.TagUtils.getInstance().computeURL(pageContext, null, "/images/default/default/myimage.gif", null, null, null, thisMap2, null, false)%>">
    </bean:define>
</logic:equal>

<logic:equal name="runTest" value="testImgSrcKeyNameApplicationScope">
    <bean:define id="TEST_RESULTS" toScope="page">
        <html:img srcKey="default.testing.image"
                  name="paramMapApplicationScope"/>
    </bean:define>
    <bean:define id="thisMap1" name="paramMapApplicationScope"
                 type="java.util.Map"/>
    <bean:define id="EXPECTED_RESULTS" toScope="page">
        <img src="<%=org.apache.struts.taglib.TagUtils.getInstance().computeURL(pageContext, null, "/images/default/default/myimage.gif", null, null, null, thisMap1, null, false)%>">
    </bean:define>
</logic:equal>

<logic:equal name="runTest" value="testImgSrcKeyNamePropertyApplicationScope">
    <bean:define id="TEST_RESULTS" toScope="page">
        <html:img srcKey="default.testing.image"
                  name="paramPropertyMapApplicationScope" property="map"/>
    </bean:define>
    <bean:define id="thisMap2" name="paramPropertyMapApplicationScope"
                 property="map" type="java.util.Map"/>
    <bean:define id="EXPECTED_RESULTS" toScope="page">
        <img src="<%=org.apache.struts.taglib.TagUtils.getInstance().computeURL(pageContext, null, "/images/default/default/myimage.gif", null, null, null, thisMap2, null, false)%>">
    </bean:define>
</logic:equal>

<logic:equal name="runTest" value="testImgSrcKeyNameSessionScope">
    <bean:define id="TEST_RESULTS" toScope="page">
        <html:img srcKey="default.testing.image" name="paramMapSessionScope"/>
    </bean:define>
    <bean:define id="thisMap1" name="paramMapSessionScope"
                 type="java.util.Map"/>
    <bean:define id="EXPECTED_RESULTS" toScope="page">
        <img src="<%=org.apache.struts.taglib.TagUtils.getInstance().computeURL(pageContext, null, "/images/default/default/myimage.gif", null, null, null, thisMap1, null, false)%>">
    </bean:define>
</logic:equal>

<logic:equal name="runTest" value="testImgSrcKeyNamePropertySessionScope">
    <bean:define id="TEST_RESULTS" toScope="page">
        <html:img srcKey="default.testing.image"
                  name="paramPropertyMapSessionScope" property="map"/>
    </bean:define>
    <bean:define id="thisMap2" name="paramPropertyMapSessionScope"
                 property="map" type="java.util.Map"/>
    <bean:define id="EXPECTED_RESULTS" toScope="page">
        <img src="<%=org.apache.struts.taglib.TagUtils.getInstance().computeURL(pageContext, null, "/images/default/default/myimage.gif", null, null, null, thisMap2, null, false)%>">
    </bean:define>
</logic:equal>

<logic:equal name="runTest" value="testImgSrcKeyNameRequestScope">
    <bean:define id="TEST_RESULTS" toScope="page">
        <html:img srcKey="default.testing.image" name="paramMapRequestScope"/>
    </bean:define>
    <bean:define id="thisMap1" name="paramMapRequestScope"
                 type="java.util.Map"/>
    <bean:define id="EXPECTED_RESULTS" toScope="page">
        <img src="<%=org.apache.struts.taglib.TagUtils.getInstance().computeURL(pageContext, null, "/images/default/default/myimage.gif", null, null, null, thisMap1, null, false)%>">
    </bean:define>
</logic:equal>

<logic:equal name="runTest" value="testImgSrcKeyNamePropertyRequestScope">
    <bean:define id="TEST_RESULTS" toScope="page">
        <html:img srcKey="default.testing.image"
                  name="paramPropertyMapRequestScope" property="map"/>
    </bean:define>
    <bean:define id="thisMap2" name="paramPropertyMapRequestScope"
                 property="map" type="java.util.Map"/>
    <bean:define id="EXPECTED_RESULTS" toScope="page">
        <img src="<%=org.apache.struts.taglib.TagUtils.getInstance().computeURL(pageContext, null, "/images/default/default/myimage.gif", null, null, null, thisMap2, null, false)%>">
    </bean:define>
</logic:equal>


<%
    String expected = "";
    String compareTo = "";

    if (pageContext.getAttribute("EXPECTED_RESULTS") == null) {
        throw new javax.servlet.jsp.JspException
                ("No tests on this page were called.  Please verify that you've setup the tests correctly.");
    } else {
        expected = pageContext.getAttribute("TEST_RESULTS").toString();
    }
    if (pageContext.getAttribute("TEST_RESULTS") != null) {
        compareTo = pageContext.getAttribute("EXPECTED_RESULTS").toString();
    }

    Assert.assertEquals(expected, compareTo);
%>