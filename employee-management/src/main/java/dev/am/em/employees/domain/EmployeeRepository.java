package dev.am.em.employees.domain;

import org.springframework.data.repository.ListCrudRepository;

public interface EmployeeRepository extends ListCrudRepository<EmployeeEntity, Integer> {
}
