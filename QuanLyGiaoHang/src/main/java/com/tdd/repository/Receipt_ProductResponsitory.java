/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tdd.repository;

import com.tdd.pojos.ReceiptProduct;
import java.util.List;

public interface Receipt_ProductResponsitory {
    boolean addReceipt_Product(ReceiptProduct r) ;
    List<ReceiptProduct> listReceiptProduct(int id);
}
