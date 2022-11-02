package uz.customs.webappmathtask.service;

import org.springframework.stereotype.Service;
import uz.customs.webappmathtask.entity.Student;
import uz.customs.webappmathtask.repository.StudentRepository;

import java.util.List;
import java.util.Optional;

@Service
public class StudentService {
   private final StudentRepository studentRepository;

    public StudentService(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    public Student create(Student student) {
        return studentRepository.saveAndFlush(student);
    }
    public List<Student> getAll() {
        return studentRepository.findAll();
    }
    public void deleteById(long id){
        studentRepository.deleteById(id);
    }

    public Student getById(long id){
        Optional<Student> optionalStudent = studentRepository.findById(id);
        Student student = new Student();
        if (optionalStudent.isPresent()){
            student = optionalStudent.get();
        }
        return student;
    }
}
