package com.crud.project.dao;

import com.crud.project.model.Book;

import java.util.List;

public interface BookDao {
    void addBook(Book book);
    void updateBook(Book book);
    void removeBook(int id);
    Book getBook(int id);
    List<Book> getBook(Long page);
    List<Book> getBook(String title);

}
