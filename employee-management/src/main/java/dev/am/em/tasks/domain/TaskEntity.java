package dev.am.em.tasks.domain;

import dev.am.em.common.enums.TaskStatus;
import dev.am.em.employees.domain.EmployeeEntity;
import jakarta.persistence.*;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Entity
@Table(name = "task")
@Getter
@Setter
@Builder
public class TaskEntity {
    @Id
    @GeneratedValue(strategy = jakarta.persistence.GenerationType.SEQUENCE, generator = "task_seq")
    @SequenceGenerator(name = "task_seq", sequenceName = "task_id_seq", allocationSize = 1)
    private Integer id;

    @Column(nullable = false)
    private String title;

    private String description;

    @Column(nullable = false, columnDefinition = "task_status")
    @Enumerated(EnumType.STRING)
    private TaskStatus status;

    @Column(name = "due_date")
    private LocalDate dueDate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "employee_id")
    private EmployeeEntity employee;

    public TaskEntity() {}

    public TaskEntity(Integer id, String title, String description, TaskStatus status, LocalDate dueDate, EmployeeEntity employee) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.status = status;
        this.dueDate = dueDate;
        this.employee = employee;
    }

    @Override
    public String toString() {
        return "TaskEntity{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", status='" + status + '\'' +
                ", dueDate=" + dueDate +
                ", employee=" + employee +
                '}';
    }
}
