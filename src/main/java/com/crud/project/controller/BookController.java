package com.crud.project.controller;

import com.crud.project.model.Book;
import com.crud.project.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class BookController {
    private BookService bookService;

    @Autowired
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping(value = "book", method = RequestMethod.GET)
    public String listBooks(@RequestParam(value="page", required = false) Long page, Model model) {
        if (null == page)
            page = 1L;
        model.addAttribute("book", new Book());
        model.addAttribute("searchedbook", new Book());
        model.addAttribute("listbooks", bookService.getBook(page));
        model.addAttribute("page", page);

        return "book";
    }

    @RequestMapping(value = "/book/add", method = RequestMethod.POST)
    public String addBook(@ModelAttribute("book") Book user) {
        bookService.addBook(user);
        return "redirect:/book";
    }
    @RequestMapping(value = "/book/edit", method = RequestMethod.POST)
    public String editBook(@ModelAttribute("book") Book user) {
        bookService.updateBook(user);
        return "redirect:/book";
    }

    @RequestMapping("/remove/{id}")
    public String removeBook(@PathVariable("id") int id) {
        bookService.removeBook(id);

        return "redirect:/book";
    }

    @RequestMapping("edit/{id}")
    public String editBook(@PathVariable("id") int id, @RequestParam(value="page", required = false) Long page, Model model) {
        if (null == page) page = 1L;
        model.addAttribute("book", bookService.getBook(id));
        model.addAttribute("searchedbook", new Book());
        model.addAttribute("listbooks", bookService.getBook(page));
        model.addAttribute("page", page);

        return "editbook";
    }

    @RequestMapping("bookdata/{id}")
    public String printData(@PathVariable("id") int id, Model model) {
        model.addAttribute("book", bookService.getBook(id));

        return "bookdata";
    }

    @RequestMapping("addbook")
    public String createBook(@ModelAttribute Book book) {
        return "addbook";
    }

    @RequestMapping(value="searchresults", method = RequestMethod.POST)
    public String searchResults(@ModelAttribute("searchedbook") Book book, Model model) {
        List<Book> searchResult = bookService.getBook(book.getTitle());
        model.addAttribute("listBooks", searchResult);

        return "searchresults";
    }
}
