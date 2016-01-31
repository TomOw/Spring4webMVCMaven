package com.store.domain.repository;

import com.store.domain.Product;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by tomaszowczarczyk on 27.01.2016.
 */
public interface ProductsRepository {

    List<Product> getAllProducts();

    Product getProductById(String productId);

    List<Product> getProductsByCategory(String category);

    Set<Product> getProductsByFilter(Map<String, List<String>> filterParams);

    void addProduct(Product product);
}
