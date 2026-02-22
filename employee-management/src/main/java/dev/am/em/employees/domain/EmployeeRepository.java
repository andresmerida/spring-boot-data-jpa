package dev.am.em.employees.domain;

import org.springframework.data.repository.ListCrudRepository;

import java.util.List;
import java.util.Optional;

public interface EmployeeRepository extends ListCrudRepository<EmployeeEntity, Integer> {
    Optional<EmployeeEntity> findByEmail(String email);
    List<EmployeeEntity> findByLastNameIgnoreCase(String lastName);
}
