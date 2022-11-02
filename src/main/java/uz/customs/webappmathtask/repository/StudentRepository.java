package uz.customs.webappmathtask.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import uz.customs.webappmathtask.entity.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {
}
