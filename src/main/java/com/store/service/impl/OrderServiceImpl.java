package com.store.service.impl;

import com.store.domain.Product;
import com.store.domain.repository.ProductsRepository;
import com.store.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by tomaszowczarczyk on 28.01.2016.
 */

@Service
public class OrderServiceImpl implements OrderService{
    @Autowired
    private ProductsRepository productsRepository;

    public void processOrder(String productId, int count) {
        Product productById = productsRepository.getProductById(productId);
        if (productById.getUnitsInStock() < count) {
            throw new IllegalArgumentException("zbyt malo towaru. obecnie: " + productById.getUnitsInStock());
        }
        productById.setUnitsInStock(productById.getUnitsInStock() - count);
    }
}
