package dev.am.em.employees.domain;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.Instant;
import java.time.LocalDate;

@Entity
@Table(name = "employee_details")
@Getter
@Setter
public class EmployeeDetailsEntity {
    @Id
    @Column(name = "employee_id", nullable = false)
    private Integer id;

    @Column(name = "social_security_number", nullable = false)
    private String socialSecurityNumber;

    @Column(name = "bank_account_number", nullable = false)
    private String bankAccountNumber;

    @Column(name = "date_of_birth")
    private LocalDate birthDate;

    @Column(name = "hire_date")
    private LocalDate hireDate;

    @Column(name = "salary", nullable = false)
    private double salary;

    @Column(name = "created_at", nullable = false, updatable = false)
    private Instant createdAt;

    @Column(name = "updated_at", nullable = false)
    private Instant updatedAt;

    @OneToOne
    @JoinColumn(name = "employee_id", referencedColumnName = "id", nullable = false, updatable = false)
    @MapsId // Maps the foreign key column to the primary key column
    private EmployeeEntity employee;

    public EmployeeDetailsEntity() {}

    @Override
    public String toString() {
        return "EmployeeDetailsEntity{" +
                "id=" + id +
                ", socialSecurityNumber='" + socialSecurityNumber + '\'' +
                ", bankAccountNumber='" + bankAccountNumber + '\'' +
                ", birthDate=" + birthDate +
                ", hireDate=" + hireDate +
                ", salary=" + salary +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                '}';
    }
}
