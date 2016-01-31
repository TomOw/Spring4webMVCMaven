package com.store.service.impl;

import com.store.domain.Product;
import com.store.domain.repository.ProductsRepository;
import com.store.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by tomaszowczarczyk on 29.01.2016.
 */
@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    ProductsRepository productsRepository;

    public List<Product> getAllProducts(){
        return productsRepository.getAllProducts();
    }

    public Product getProductById(String productId){
        return productsRepository.getProductById(productId);
    }

    public List<Product> getProductsByCategory(String category) {
        return productsRepository.getProductsByCategory(category);
    }

    public Set<Product> getProductsByFilter(Map<String, List<String>> filterParams){
        return productsRepository.getProductsByFilter(filterParams);
    }

    public void addProduct(Product product) {
        productsRepository.addProduct(product);
    }
}
