package com.hainguyen.service;

import com.hainguyen.model.Products;

import java.util.List;

public interface ProductsService {
    List<Products> findAll();

    void save(Products product);

    Products findById(int id);

    void update(int id, Products product);

    void remove(int id);
}
