package com.greenwich.storeowner.repository;

import com.greenwich.storeowner.domain.Book;
import org.springframework.data.repository.CrudRepository;

public interface BookRepository extends CrudRepository<Book, Long> {

}
