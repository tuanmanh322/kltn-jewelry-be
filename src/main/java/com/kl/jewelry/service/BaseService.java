package com.kl.jewelry.service;

import java.util.List;

public interface BaseService<T> {
    void add(T t);

    T getById(Long id);

    List<T> getAll();

    void delete(Long id);

    void edit(T t);
}
