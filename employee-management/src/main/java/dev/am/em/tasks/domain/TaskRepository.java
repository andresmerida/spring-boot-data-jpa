package dev.am.em.tasks.domain;

import org.springframework.data.repository.ListCrudRepository;

public interface TaskRepository extends ListCrudRepository<TaskEntity, Integer> {
}
