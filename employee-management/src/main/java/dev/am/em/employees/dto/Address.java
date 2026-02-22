package dev.am.em.employees.dto;

import jakarta.validation.constraints.NotBlank;

public record Address(
        @NotBlank(message = "Street is required") String addressLine1,
        @NotBlank(message = "City is required") String city,
        @NotBlank(message = "State is required") String state,
        @NotBlank(message = "zipCode is required") String zipCode,
        @NotBlank(message = "Country is required") String country
) {
}
