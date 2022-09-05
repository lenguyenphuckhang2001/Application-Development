package com.greenwich.adminpage.repository;

import com.greenwich.adminpage.domain.Book;
import org.springframework.data.repository.CrudRepository;

public interface BookRepository extends CrudRepository<Book, Long> {

}
