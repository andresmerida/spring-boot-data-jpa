package dev.am.em.projects.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serial;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class EmployeeProjectID implements Serializable {
    @Serial
    private static final long serialVersionUID = 1L;

    @Column(name = "employee_id", nullable = false)
    private Integer employeeId;

    @Column(name = "project_id", nullable = false)
    private Integer projectId;

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        EmployeeProjectID that = (EmployeeProjectID) o;
        return Objects.equals(employeeId, that.employeeId) && Objects.equals(projectId, that.projectId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(employeeId, projectId);
    }

    @Override
    public String toString() {
        return "EmployeeProjectID{" +
                "employeeId=" + employeeId +
                ", projectId=" + projectId +
                '}';
    }
}
