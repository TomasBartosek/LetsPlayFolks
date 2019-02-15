<%@ page contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--@elvariable id="infoMessage" type="java.lang.String"--%>

<%--@elvariable id="userModel" type="com.bartosektom.letsplayfolks.model.UserModel"--%>
<%--@elvariable id="challenge" type="com.bartosektom.letsplayfolks.entity.Challenge"--%>
<%--@elvariable id="challengeUserId" type="java.lang.Integer"--%>

<%--TODO: Upravit vsechny formulare at maji i ten header jako je tady "Registrace" je to hezci" --%>

<%@ include file="../common/header.jsp" %>
<div class="content">
    <div class="container-fluid">
        <c:if test="${not empty infoMessage}">
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <spring:message code="${infoMessage}"/>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </c:if>
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title">
                            <spring:message code="user.registration.header"/>
                        </h4>
                    </div>
                    <div class="card-body">
                        <spring:url value="submitResult" var="submitResultUrl" htmlEscape="true">
                            <spring:param name="challengeId" value="${challenge.id}"/>
                        </spring:url>
                        <form:form method="POST" action="/user/registration" modelAttribute="userModel">
                            <div class="form-group">
                                <label class="label-control">
                                    <spring:message code="profile.form.username"/>
                                </label>
                                <form:input path="userName" type="text" class="form-control"/>
                                <form:errors path="userName" cssClass="error"/>
                            </div>
                            <div class="form-group">
                                <label class="label-control">
                                    Heslo
                                </label>
                                <form:input path="password" type="password" class="form-control"/>
                                <form:errors path="password" cssClass="error"/>
                            </div>
                            <div class="form-group">
                                <label class="label-control">
                                    <spring:message code="profile.form.firstName"/>
                                </label>
                                <form:input path="firstName" type="text" class="form-control"/>
                                <form:errors path="firstName" cssClass="error"/>
                            </div>
                            <div class="form-group">
                                <label class="label-control">
                                    <spring:message code="profile.form.lastName"/>
                                </label>
                                <form:input path="lastName" type="text" class="form-control"/>
                                <form:errors path="lastName" cssClass="error"/>
                            </div>
                            <div class="form-group">
                                <label class="label-control">
                                    <spring:message code="profile.form.email"/>
                                </label>
                                <form:input path="email" type="email" class="form-control"/>
                                <form:errors path="email" cssClass="error"/>
                            </div>
                            <div class="form-group">
                                <label class="label-control">
                                    <spring:message code="profile.form.aboutMe"/>
                                </label>
                                <form:textarea path="aboutMe" cssClass="form-control" type="textarea" rows="5"/>
                            </div>
                            <button type="submit" class="btn btn-primary">
                                <spring:message code="global.submit"/>
                            </button>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="../common/footer.jsp" %>