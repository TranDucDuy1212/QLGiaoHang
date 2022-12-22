<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-wrapper">
    <section class="content">
        <div class="card-body">
            <div id="example2_wrapper" class="dataTables_wrapper dt-bootstrap4">
                <div class="row">
                    <div class="col-sm-12 col-md-6"></div>
                    <div class="col-sm-12 col-md-6"></div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <table id="example2" class="table table-bordered table-hover dataTable" role="grid"
                               aria-describedby="example2_info">
                            <thead style="text-align: center">
                                <tr>   
                                    <td colspan="7">
                                        <h3>QUẢN LÝ KHÁCH HÀNG</h3>
                                    </td>
                                </tr>
                                <tr role="row">             
                                    <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                        colspan="1">
                                        Tên tài khoản</th>
                                    <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                        colspan="1">
                                        Họ tên</th>
                                    <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                        colspan="1">
                                        Địa chỉ</th>
                                    <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1">
                                        Gmail</th>
                                    <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1">
                                        CMND</th>
                                    <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1">
                                        Delete</th>
                                    <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1">
                                        Update</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="g" items="${guest}">
                                    <tr role="row" class="odd">
                                        <td class="col-sm-1">${g.username}</td>
                                        <td class="col-sm-2">${g.name}</td>
                                        <td class="col-sm-4">${g.address}</td>
                                        <td class="col-sm-2">${g.gmail}</td>
                                        <td class="col-sm-1">${g.cmnd}</td>
                                        <td style="padding: 5px" class="col-sm-1">

                                            <button type="button"
                                                    class="btn btn-block bg-gradient-danger">Delete</button>

                                            <td style="padding: 5px" class="col-sm-1">
                                                <button type="button"
                                                        class="btn btn-block bg-gradient-primary" 
                                                        data-target="#modal-lg-update" 
                                                        data-toggle="modal"
                                                        onclick="getDiscount(${discount.id})">Update</button>
                                            </td>
                                            </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>    
</div> 

<div class="modal fade" id="modal-lg-update">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Khách hàng</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="" >  
                    <div class="modal-body">
                        <input type="hidden" name="id" class="form-control" id="idDiscount" />
                        <div class="form-group">
                            <label for="name">Tên tài khoản</label>
                            <input type="text" name="username" class="form-control"  id="usernameUpdate" path="username" placeholder=" Nhập tên tài khoản"/>
                        </div>
                        
                        <div class="form-group">
                            <label for="name">Họ tên</label>
                            <input type="text" name="name" class="form-control" path="name" id="nameUpdate" placeholder="Nhập họ tên"/>
                        </div>
                        
                        <div class="form-group">
                            <label for="name">Địa chỉ</label>
                            <input type="text" name="address" class="form-control" path="address" id="addressUpdate" placeholder="Nhập địa chỉ"/>
                        </div>
                        
                        <div class="form-group">
                            <label for="name">Gmail</label>
                            <input type="text" name="gmail" class="form-control" path="gmail" id="gmailUpdate" placeholder="Nhập gmail"/>
                        </div>
                        
                        <div class="form-group">
                            <label for="name">Số điện thoại</label>
                            <input type="text" name="phone" class="form-control" path="phone" id="phoneUpdate" placeholder="Nhập số điện thoại"/>
                        </div>
                        
                        <div class="form-group">
                            <label for="name">CMND</label>
                            <input type="text" name="cmnd" class="form-control" path="cmnd" id="cmndUpdate" placeholder="Nhập số chứng minh thư"/>
                        </div>
                    </div>

                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Thoát</button>
                        <input type="submit" class="btn btn-primary" value="Cập nhật"  id="randomcode" />
                    </div>
                </form> 
            </div>
        </div>
    </div>