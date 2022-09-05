package com.greenwich.adminpage.service;

import com.greenwich.adminpage.domain.Book;

import java.util.List;

public interface BookService {

    Book save(Book book);

    List<Book> findAll();

    Book findById(Long id);

    void deleteById(Long id);
}
