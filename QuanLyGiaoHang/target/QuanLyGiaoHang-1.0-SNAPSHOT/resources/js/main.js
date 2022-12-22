/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function addToCart(id, name, price, image){
    event.preventDefault();
    fetch("/QuanLyGiaoHang/api/cart", {
        method: 'post',
        body : JSON.stringify({
            "productId": id,
            "productName": name , 
            "price": price,
            "quantity": 1, 
            "image" : image
        }),
        headers: {
            "Content-Type" : "application/json"
        }
    }).then(function (res){
        return res.json();
    }).then (function  (data) {
       
        let counter = document.getElementById("cartCounter");
        counter.innerText = data + " items";
    });
}

function updateCart(obj, productId){
    fetch("/QuanLyGiaoHang/api/cart", {
        method: 'put',
        body : JSON.stringify({
            "productId": productId,
            "productName": "", 
            "price": "",
            "quantity": obj.value 
        }),
        headers: {
            "Content-Type" : "application/json"
        }
        }).then(function (res){
            return res.json();
        }).then(function (data){
            let counter = document.getElementById("cartCounter");
            counter.innerText = data.counter;
            let amount = document.getElementById("amountCart");
            amount.innerText = data.amount;
    });
}


function deleteCart(productId){
    fetch(`/QuanLyGiaoHang/api/cart/${productId}`, {
    method: 'delete'
    }).then(function (res){
        return res.json();
    }).then(function (data){
        let counter = document.getElementById("cartCounter");
        counter.innerText = data.counter;
        let amount = document.getElementById("amountCart");
        amount.innerText = data.amount;
        let row = document.getElementById(`product${productId}`);
        row.style.display = "none";
    });
}

function changeStatusReceipt(id){
    fetch(`/QuanLyGiaoHang/changeStatusReceipt/${id}`, {
        method: 'get'
        }).then(function (res){
            location.reload();
            return res.json();
        });
}

function getProduct(productId){
    
    fetch(`/QuanLyGiaoHang/api/product/${productId}`, {
    method: 'get'
    }).then(function (res){
        return res.json();
    }).then(function (data){
        console.log(data);
        let id = document.getElementById("idProduct");
        id.value = data.id;
        let name = document.getElementById("nameProduct");
        name.value = data.name;
        let price = document.getElementById("priceProduct");
        price.value = data.price;
        let amount = document.getElementById("amountProduct");
        amount.value = data.amount;
    });
}

function addComment(receiptID){
    fetch("/QuanLyGiaoHang/api/add-comment", {
        method: 'post',
        body : JSON.stringify({
            "content" : document.getElementById("commentID").value,
            "receiptID" : receiptID
        }),
        headers: {
            "Content-Type" : "application/json"
        }
    }).then(function (res){
        return res.json();
    }).then (function  (data) {
        let area = document.getElementById("commentArea");
        console.log(data);
        area.innerHTML = `
            <div class="be-comment">
                <div class="be-comment-content">                    
                    <span class="be-comment-name">
                        <a href="#"></a>
                    </span>
                    <span class="be-comment-time">
                        <i class="fa fa-clock-o"></i>
                        ${moment(data.dateTime).fromNow()}
                    </span>
                    <p class="be-comment-text">
                        ${data.content}
                    </p>
                </div>
            </div>
            <hr>
    ` + area.innerHTML  ;
    });
}