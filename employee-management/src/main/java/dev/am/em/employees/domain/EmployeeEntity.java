package dev.am.em.employees.domain;

import dev.am.em.projects.domain.EmployeeProjectEntity;
import dev.am.em.tasks.domain.TaskEntity;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name = "employee")
@Getter
@Setter
public class EmployeeEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE , generator = "employee_seq")
    @SequenceGenerator(name = "employee_seq", sequenceName = "employee_id_seq", allocationSize = 1)
    private Integer id;

    @Column(name = "first_name", nullable = false)
    private String firstName;

    @Column(name = "last_name", nullable = false)
    private String lastName;

    @Column(nullable = false, unique = true)
    private String email;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "address_id")
    private AddressEntity address;

    @OneToOne(mappedBy = "employee", cascade = CascadeType.ALL, orphanRemoval = true)
    @PrimaryKeyJoinColumn   // Joins using the primary key
    private EmployeeDetailsEntity employeeDetails;

    @OneToMany(mappedBy = "employee", fetch = FetchType.LAZY)
    private Set<TaskEntity> tasks = new HashSet<>();

    @OneToMany(mappedBy = "employee", fetch = FetchType.LAZY)
    private Set<EmployeeProjectEntity> projects = new HashSet<>();

    public EmployeeEntity() {}

    public EmployeeEntity(String firstName, String lastName, String email) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        EmployeeEntity that = (EmployeeEntity) o;
        return Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }

    @Override
    public String toString() {
        return "EmployeeEntity{" +
                "id=" + id +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", employeeDetails=" + employeeDetails +
                '}';
    }
}
