package uz.customs.webappmathtask.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import uz.customs.webappmathtask.entity.EquationHistory;

import java.util.List;


public interface EquationHistoryRepository extends JpaRepository<EquationHistory, Long> {
    public List<EquationHistory> findAllByOrderByIdDesc();
}
