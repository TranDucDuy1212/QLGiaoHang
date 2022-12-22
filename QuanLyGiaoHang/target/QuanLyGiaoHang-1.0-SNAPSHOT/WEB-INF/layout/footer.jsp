<%-- 
    Document   : footer
    Created on : Apr 23, 2022, 3:12:54 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!-- BEGIN FOOTER -->
    <div class="footer">
      <div class="container">
        <div class="row">
          <!-- BEGIN COPYRIGHT -->
          <div class="col-md-4 col-sm-4 padding-top-10">
            2022 © Hệ thống quản lý bán hàng. 
          </div>
          <!-- END COPYRIGHT -->
          <!-- BEGIN PAYMENTS -->
          <div class="col-md-4 col-sm-4">
            <ul class="list-unstyled list-inline pull-right">
              <li><img src="<c:url value="resources/assets/corporate/img/payments/western-union.jpg"/>" alt="We accept Western Union" title="We accept Western Union"></li>
              <li><img src="<c:url value="resources/assets/corporate/img/payments/american-express.jpg"/>" alt="We accept American Express" title="We accept American Express"></li>
              <li><img src="<c:url value="resources/assets/corporate/img/payments/MasterCard.jpg"/>" alt="We accept MasterCard" title="We accept MasterCard"></li>
              <li><img src="<c:url value="resources/assets/corporate/img/payments/PayPal.jpg"/>" alt="We accept PayPal" title="We accept PayPal"></li>
              <li><img src="<c:url value="resources/assets/corporate/img/payments/visa.jpg"/>" alt="We accept Visa" title="We accept Visa"></li>
            </ul>
          </div>
          <!-- END PAYMENTS -->
          <!-- BEGIN POWERED -->
          <div class="col-md-4 col-sm-4 text-right">

          </div>
          <!-- END POWERED -->
        </div>
      </div>
    </div>
    <!-- END FOOTER -->
