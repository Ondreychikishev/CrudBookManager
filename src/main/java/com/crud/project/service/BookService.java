package com.crud.project.service;

import com.crud.project.model.Book;

import java.util.List;

public interface BookService {
    void addBook(Book book);
    void updateBook(Book book);
    void removeBook(int id);
    Book getBook(int id);
    List<Book> getBook(Long page);
    List<Book> getBook(String title);
}
