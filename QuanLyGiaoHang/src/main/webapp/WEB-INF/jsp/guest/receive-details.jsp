<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h3 class="text-center">CHI TIẾT ĐƠN HÀNG</h3>

<div class="row" style="margin-bottom: 10px">
    <div class="col-md-2">
        <h4>Mã đơn hàng:</h4>
        <h4>Ngày đặt đơn: </h4>
        <h4>Trạng thái: </h4>
    </div>
    <div class="col-md-10">
        <h4>${receipt.id}</h4>
        <h4>${receipt.dateTime}</h4>
        <c:if test="${receipt.status == 0}">
              <h4 style="color: red">Chưa giao</h4>
          </c:if>
        <c:if test="${receipt.status == 1}">
            <h4>Đang giao</h4>
          </c:if>
        <c:if test="${receipt.status == 2}">
            <h4 style="color: green">Đã giao</h4>
          </c:if>
    </div>
</div>
<hr>
        
<div class="row margin-bottom-40">
    <!-- BEGIN CONTENT -->
    <div class="col-md-12 col-sm-12">
      <h1>Sản phẩm đã mua</h1>
      <div class="goods-page">
        <div class="goods-data clearfix">
          <div class="table-wrapper-responsive">
          <table summary="Shopping cart">
            <tr>
              <th class="goods-page-image">Ảnh</th>
              <th class="goods-page-description">Sản phẩm</th>
              <th class="goods-page-quantity">Số lượng</th>
              <th class="goods-page-price">GIÁ 1 SẢN PHẨM</th>
                <th class="goods-page-price">GIÁ  THEO SỐ LƯỢNG</th>
            </tr>
            <c:forEach items="${list}" var="c">
                <tr>
              <td class="goods-page-image">
                <a href="javascript:;"><img src="<c:out value="${c.productID.image}"/>" alt="Berry Lace Dress"></a>
              </td>
              <td class="goods-page-description">
                <h3><c:out value="${c.productID.name}"/></h3>
              </td>
              <td class="goods-page-description">
                <h3><c:out value="${c.quantity}"/></h3>
              </td>
              <td class="goods-page-price">
                <strong><span>${c.price}</span></strong>
              </td>
              <td class="goods-page-price">
                <strong><span>${c.price*c.quantity}</span></strong>
              </td>
            </tr>
            </c:forEach>            
          </table>
          </div>
            
          <div class="shopping-total">
            <ul>
              <li class="shopping-total-price">
                <em>Tổng tiền:</em>
                <strong class="price"><span>${receipt.amount} VNĐ</span></strong>
              </li>
            </ul>
          </div>          
        </div>

      </div>
    </div>
</div>
        
 
 

        <div class="container">
            <div class="be-comment-block">
                
                <c:if test="${receipt.status == 2}">
                    <h1 class="comments-title">Bình luận</h1>
                    <form class="form-group">  
                        <textarea class="form-control" placeholder="Nhập bình luận" id="commentID"></textarea>
                        <br>
                        
                    </form> 
                    <input type="submit" value="Gửi bình luận" class="btn btn-danger" onclick="addComment(${receipt.id})"/>
                    <hr>
                </c:if>
                <div id="commentArea">
                    <c:forEach items="${receipt.commentCollection}" var="r">
                        <div class="be-comment">
                            <div class="be-comment-content">                    
                                    <span class="be-comment-name">
                                        <a href="#">${r.accountID.username}</a>
                                        </span>
                                    <span class="be-comment-time">
                                        <i class="fa fa-clock-o"></i>
                                        ${r.dateTime}
                                    </span>
                                <p class="be-comment-text">
                                    ${r.content}
                                </p>
                            </div>
                        </div>
                                <hr>
                    </c:forEach>
                </div>
            </div>
        </div>          


                <%--
<div id="commentArea">
    <c:forEach items="${receipt.commentCollection}" var="r">
        <div class="row">
            <div class="col-md-3">
                <img class="rounded-circle" src="" />
            </div>
            <div class="col-md-10 mydate">
                <p>${r.content}</p>
                <i>${r.dateTime}</i>
            </div>
        </div>            <hr>
    </c:forEach>
</div>
                --%>

<script>
    window.onload() = function (){
        let dates = document.querySelectorAll(".mydate > i");
            for(let i =0; i< dates.length; i++){
                let d = dates[i]
                d.innerText = moment(d.innerText).fromNow();
            }
    }


</script>