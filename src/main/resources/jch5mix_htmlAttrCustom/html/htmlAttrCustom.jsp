<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>

<c:if test="${jcr:isNodeType(currentNode, 'jch5mix:htmlAttrCustom')}">
    <c:set var="id" value="${currentNode.properties['id'].string}"/>
    <c:set var="cssClass" value="${currentNode.properties['cssClass'].string}"/>
    <c:set var="style" value="${currentNode.properties['style'].string}"/>
    <c:set var="role" value="${currentNode.properties['role'].string}"/>
    <c:set var="aria" value="${currentNode.properties['aria'].string}"/>
</c:if>

<c:set var="elementType" value="${fn:replace(currentNode.primaryNodeType,'jch5nt:','')}"/>

<${elementType}
    <c:if test="${not empty id}">  id="${id}"  </c:if>
    <c:if test="${not empty cssClass}"><c:out value=" "/>  class="${cssClass}"  </c:if>
    <c:if test="${not empty style}"><c:out value=" "/>  style="${style}"  </c:if>
    <c:if test="${not empty role}"><c:out value=" "/>  role="${role}"  </c:if>
    <c:if test="${not empty aria}"><c:out value=" "/>  aria-label="${fn:escapeXml(aria)}"  </c:if>
>
    <template:area path="${elementType}" />
</${elementType}>