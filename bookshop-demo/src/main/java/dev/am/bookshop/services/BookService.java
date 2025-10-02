package dev.am.bookshop.services;

import dev.am.bookshop.domain.entities.Book;
import dev.am.bookshop.domain.specifications.BookSpecification;
import dev.am.bookshop.repositories.BookRepository;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {
    private final BookRepository bookRepository;

    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    public List<Book> findAllFiltered(String categoryName,
                                      String languageName,
                                      String formatName,
                                      double maxPrice) {
        Specification<Book> specification = Specification.unrestricted();

        if (categoryName != null) {
            specification = specification.and(BookSpecification.hasCategoryName(categoryName));
        }

        if (languageName != null) {
            specification = specification.and(BookSpecification.hasLanguageName(languageName));
        }

        if (formatName != null) {
            specification = specification.and(BookSpecification.hasFormatName(formatName));
        }

        if (maxPrice > 0) {
            specification = specification.and(BookSpecification.hasPriceLessThanOrEqualTo(maxPrice));
        }

        return bookRepository.findAll(specification);
    }
}
