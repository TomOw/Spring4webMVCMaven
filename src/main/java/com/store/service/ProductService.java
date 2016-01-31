package com.store.service;

import com.store.domain.Product;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by tomaszowczarczyk on 29.01.2016.
 */
public interface ProductService {
    List<Product> getAllProducts();

    Product getProductById(String ProductId);

    List<Product> getProductsByCategory(String category);

    Set<Product> getProductsByFilter(Map<String, List<String>> filterParams);

    void addProduct(Product product);
}
