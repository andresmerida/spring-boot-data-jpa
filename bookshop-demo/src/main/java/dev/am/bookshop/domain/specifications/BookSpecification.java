package dev.am.bookshop.domain.specifications;

import dev.am.bookshop.domain.entities.Book;
import org.springframework.data.jpa.domain.Specification;

public class BookSpecification {

    // category filter
    public static Specification<Book> hasCategoryName(String name) {
        return (root, criteriaQuery, criteriaBuilder) ->
                criteriaBuilder.equal(root
                        .get("category")
                        .get("name"), name);
    }

    // price filter
    public static Specification<Book> hasPriceLessThanOrEqualTo(double maxPrice) {
        return (root, criteriaQuery, criteriaBuilder) ->
                criteriaBuilder.lessThanOrEqualTo(root
                        .get("price"), maxPrice);
    }

    // language filter
    public static Specification<Book> hasLanguageName(String language) {
        return (root, criteriaQuery, criteriaBuilder) ->
                criteriaBuilder.like(root
                        .get("language")
                        .get("name"), language);
    }

    // format filter
    public static Specification<Book> hasFormatName(String name) {
        return (root, criteriaQuery, criteriaBuilder) ->
                criteriaBuilder.equal(root
                        .get("format")
                        .get("name"), name);
    }
}
