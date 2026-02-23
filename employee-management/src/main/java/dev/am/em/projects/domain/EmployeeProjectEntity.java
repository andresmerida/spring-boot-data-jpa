package dev.am.em.projects.domain;

import dev.am.em.common.enums.EmployeeProjectRole;
import dev.am.em.employees.domain.EmployeeEntity;
import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.MapsId;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

@Entity
@Table(name = "employee_project")
@Getter
@AllArgsConstructor
@Builder
public class EmployeeProjectEntity {

    @EmbeddedId
    private EmployeeProjectID id;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false, columnDefinition = "employee_role")
    private EmployeeProjectRole role;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "employee_id", referencedColumnName = "id", nullable = false, updatable = false)
    @MapsId("employeeId")   // Ties to the projectId in the embedded key
    private EmployeeEntity employee;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "project_id", referencedColumnName = "id", nullable = false, updatable = false)
    @MapsId("projectId")
    private ProjectEntity project;

    public EmployeeProjectEntity() {
    }
}
