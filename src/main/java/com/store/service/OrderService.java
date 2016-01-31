package com.store.service;

/**
 * Created by tomaszowczarczyk on 28.01.2016.
 */
public interface OrderService {

    void processOrder(String productId, int count);
}
