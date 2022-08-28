package com.greenwich.storeowner.service;

import com.greenwich.storeowner.domain.Book;

import java.util.List;

public interface BookService {

    Book save(Book book);

    List<Book> findAll();

    Book findById(Long id);

    void deleteById(Long id);
}
