package com.store.domain.repository.impl;

import com.store.domain.Product;
import com.store.domain.repository.ProductsRepository;
import org.springframework.stereotype.Repository;

import java.util.*;

/**
 * Created by tomaszowczarczyk on 27.01.2016.
 */
@Repository
public class InMemoryProductRepository implements ProductsRepository {

    private List<Product> listOfProducts = new ArrayList<Product>();

    public InMemoryProductRepository() {

        Product iphone = new Product("P1234", "iPhone 5s", 500);
        iphone.setDescription("Apple iPhone 5s, smartfon....");
        iphone.setCategory("Smartphone");
        iphone.setManufacturer("Apple");
        iphone.setUnitsInStock(1000);

        Product laptop_dell = new Product("P1235", "Dell Inspirion", 700);
        laptop_dell.setDescription("Dell Inspirion laptop....");
        laptop_dell.setCategory("Laptop");
        laptop_dell.setManufacturer("Dell");
        laptop_dell.setUnitsInStock(1000);

        Product tablet_Nexus = new Product("P1236", "Nexus 7", 300);
        tablet_Nexus.setDescription("Google Nexus 7 tablet....");
        tablet_Nexus.setCategory("Tablet");
        tablet_Nexus.setManufacturer("Google");
        tablet_Nexus.setUnitsInStock(1000);

        Product nokia_lumia735 = new Product("P1237", "Lumia 735", 800);
        nokia_lumia735.setDescription("Nokia Lumia 735....");
        nokia_lumia735.setCategory("Smartphone");
        nokia_lumia735.setManufacturer("Nokia");
        nokia_lumia735.setUnitsInStock(1000);

        listOfProducts.add(iphone);
        listOfProducts.add(laptop_dell);
        listOfProducts.add(tablet_Nexus);
        listOfProducts.add(nokia_lumia735);
    }

    public List<Product> getAllProducts() {
        return listOfProducts;
    }

    public Product getProductById(String productId) {
        Product productById = null;
        for (Product product :
                listOfProducts) {
            if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
                productById = product;
                break;
            }
        }
        if (productById == null) {
            throw new IllegalArgumentException("Brak produktu o wskazanym id: " + productId);
        }
        return productById;
    }

    public List<Product> getProductsByCategory(String category) {
        List<Product> productsByCategory = new ArrayList<Product>();
        for (Product product :
                listOfProducts) {
            if (category.equalsIgnoreCase(product.getCategory())) {
                productsByCategory.add(product);
            }
        }
        return productsByCategory;

        }

    public Set<Product> getProductsByFilter(Map<String, List<String>> filterParams) {
        Set<Product> productsByBrand = new HashSet<Product>();
        Set<Product> productsByCatregory = new HashSet<Product>();
        Set<String> criterias = filterParams.keySet();
        if (criterias.contains("brand")) {
            for (String brandName:
                 filterParams.get("brand")) {
                for (Product product:
                     listOfProducts) {
                    if (brandName.equalsIgnoreCase(product.getManufacturer())) {
                        productsByBrand.add(product);
                    }
                }
            }
        }
        if (criterias.contains("category")) {
            for (String category:
                 filterParams.get("category")) {
                productsByCatregory.addAll(this.getProductsByCategory(category));
            }
        }
        productsByCatregory.retainAll(productsByBrand);
        return productsByCatregory;
    }

    public void addProduct(Product product) {
        listOfProducts.add(product);
    }
}
