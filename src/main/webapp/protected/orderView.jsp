<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet"/>


<div class="row-fluid" ng-controller="contactsController">
    <h2>
        <p class="text-center">
            <spring:message code='orderList.header'/>
        </p>
    </h2>
    <h4>
        <div ng-class="{'': state == 'list', 'none': state != 'list'}">
            <p class="text-center">
                <spring:message code="message.total.records.found"/>:&nbsp;{{page.totalContacts}}
            </p>
        </div>
    </h4>

    <div>


        <div id="gridContainer" ng-class="{'': state == 'list', 'none': state != 'list'}">
            <table class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th scope="col"><spring:message code="tamaar.orderId"/></th>
                    <th scope="col"><spring:message code="tamaar.orderDetailId"/></th>
                    <th scope="col"><spring:message code="tamaar.productId"/></th>
                    <th scope="col"><spring:message code="tamaar.quantity"/></th>
                    <th scope="col"><spring:message code="tamaar.totalPrice"/></th>
                    <th scope="col"><spring:message code="tamaar.orderDetailDialog"/></th>
                </tr>
                </thead>
                <tbody ng-repeat="orderVo in page.source">

                    <tr ng-repeat="orderDetailVo in orderVo.orderDetailsVO">

                        <td class="tdContactsCentered">{{orderVo.orderId}}</td>
                        <td class="tdContactsCentered">{{orderDetailVo.orderDetailId}}</td>
                        <td class="tdContactsCentered">{{orderDetailVo.productVo.productId}}</td>
                        <td class="tdContactsCentered">{{orderDetailVo.quantity}}</td>
                        <td class="tdContactsCentered">{{orderDetailVo.totalPrice}}</td>

                        <td class="width15">
                            <div class="text-center">
                                <input type="hidden" value="{{contact.id}}"/>
                                <a href="#myModal"
                                   ng-click="selectedContact(orderVo);"
                                   role="button"
                                   title="<spring:message code="update"/>&nbsp;<spring:message code="contact"/>"
                                   class="btn btn-inverse" data-toggle="modal">
                                    See Detail
                                </a>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>

            <div class="text-center">
                <button href="#" class="btn btn-inverse"
                        ng-class="{'btn-inverse': page.currentPage != 0, 'disabled': page.currentPage == 0}"
                        ng-disabled="page.currentPage == 0" ng-click="changePage(0)"
                        title='<spring:message code="pagination.first"/>'
                        >
                    <spring:message code="pagination.first"/>
                </button>
                <button href="#"
                        class="btn btn-inverse"
                        ng-class="{'btn-inverse': page.currentPage != 0, 'disabled': page.currentPage == 0}"
                        ng-disabled="page.currentPage == 0" class="btn btn-inverse"
                        ng-click="changePage(page.currentPage - 1)"
                        title='<spring:message code="pagination.back"/>'
                        >&lt;</button>
                <span>{{page.currentPage + 1}} <spring:message code="pagination.of"/> {{page.pagesCount}}</span>
                <button href="#"
                        class="btn btn-inverse"
                        ng-class="{'btn-inverse': page.pagesCount - 1 != page.currentPage, 'disabled': page.pagesCount - 1 == page.currentPage}"
                        ng-click="changePage(page.currentPage + 1)"
                        ng-disabled="page.pagesCount - 1 == page.currentPage"
                        title='<spring:message code="pagination.next"/>'
                        >&gt;</button>
                <button href="#"
                        class="btn btn-inverse"
                        ng-class="{'btn-inverse': page.pagesCount - 1 != page.currentPage, 'disabled': page.pagesCount - 1 == page.currentPage}"
                        ng-disabled="page.pagesCount - 1 == page.currentPage"
                        ng-click="changePage(page.pagesCount - 1)"
                        title='<spring:message code="pagination.last"/>'
                        >
                    <spring:message code="pagination.last"/>
                </button>
            </div>
        </div>

        <div ng-class="{'text-center': displayCreateContactButton == true, 'none': displayCreateContactButton == false}">
            <br/>
        </div>

        <jsp:include page="contactsDialogs.jsp"/>

    </div>
</div>

<script src="<c:url value="/resources/js/pages/contacts.js" />"></script>