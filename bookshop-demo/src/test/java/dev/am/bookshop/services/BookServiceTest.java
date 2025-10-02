package dev.am.bookshop.services;

import dev.am.bookshop.domain.entities.Book;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class BookServiceTest {

    @Autowired
    BookService bookService;

    @Test
    void findAllBookByCategory() {
        List<Book> bookList = bookService.findAllFiltered("Nonfiction",
                null, null, 0);
        int expectedSize = 5;
        assertEquals(expectedSize, bookList.size());
    }

    @Test
    void findAllBookByCategoryAndFormat() {
        List<Book> bookList = bookService.findAllFiltered("Fiction",
                null, "Hardcover", 0);
        int expectedSize = 2;
        assertEquals(expectedSize, bookList.size());
    }

    @Test
    void findAllBookByCategoryAndLanguage() {
        List<Book> bookList = bookService.findAllFiltered("Fiction",
                "English", null, 0);
        int expectedSize = 5;
        assertEquals(expectedSize, bookList.size());
    }

    @Test
    void findAllBookByCategoryAndLanguageAndFormat() {
        List<Book> bookList = bookService.findAllFiltered("Fiction",
                "German", "Hardcover", 0);
        int expectedSize = 2;
        assertEquals(expectedSize, bookList.size());
    }

    @Test
    void findAllBookByCategoryAndLanguageAndPrice() {
        List<Book> bookList = bookService.findAllFiltered("Fiction",
                "English", null, 40.0);
        int expectedSize = 3;
        assertEquals(expectedSize, bookList.size());
    }

    @Test
    void findAllBookByCategoryAndLanguageAndFormatAndPrice() {
        List<Book> bookList = bookService.findAllFiltered("Fiction",
                "English", "Paperback", 50.0);
        int expectedSize = 4;
        assertEquals(expectedSize, bookList.size());
    }

    @Test
    void findAllBook() {
        List<Book> bookList = bookService.findAllFiltered(null,
                null, null, 0.0);
        int expectedSize = 15;
        assertEquals(expectedSize, bookList.size());
    }
}