package dev.am.bookshop.domain.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "format")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Format {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NotBlank(message = "Format name is mandatory")
    @Column(length = 100)
    private String name;
}
