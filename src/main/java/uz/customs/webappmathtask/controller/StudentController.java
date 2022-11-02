package uz.customs.webappmathtask.controller;

import com.lowagie.text.DocumentException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import uz.customs.webappmathtask.config.UserPDFExporter;
import uz.customs.webappmathtask.dto.StudentRequestDto;
import uz.customs.webappmathtask.entity.Student;
import uz.customs.webappmathtask.service.StudentService;

import javax.servlet.http.HttpServletResponse;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Paths;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/student")
public class StudentController {

    public static String uploadDirectory = System.getProperty("user.dir") + "/uploads";

    @Autowired
    StudentService studentService;

    @GetMapping("/")
    public ModelAndView returnStartPage(){
        List<Student> studentList = studentService.getAll();
        ModelAndView model = new ModelAndView("task3");
        model.addObject("studentList", studentList);
        System.out.println(studentList.toString());
        return model;
    }

    @PostMapping(value = "/add")
    public ModelAndView saveCourse(@ModelAttribute("/") StudentRequestDto studentDto, @RequestParam("file") MultipartFile file) throws IOException {
        Timestamp currentTimestamp = new Timestamp(System.currentTimeMillis());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss-SSS");
        String format = simpleDateFormat.format(currentTimestamp);

        Student student = new Student();

        if (!file.isEmpty()) {
            String fileName = format + "_" + file.getOriginalFilename();
            String filePath = Paths.get(uploadDirectory, fileName).toString();
            String fileType = file.getContentType();
            long size = file.getSize();
            String fileSize = String.valueOf(size);

            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(filePath)));
            stream.write(file.getBytes());
            stream.close();

            student.setFileName(fileName);
            student.setFilePath(filePath);
            student.setFileSize(fileSize);
            student.setFileType(fileType);
        }else{
            Student studentDb = studentService.getById(studentDto.getId());
            student.setFileName(studentDb.getFileName());
            student.setFilePath(studentDb.getFilePath());
            student.setFileSize(studentDb.getFileSize());
            student.setFileType(studentDb.getFileType());
        }

        student.setId(studentDto.getId());
        student.setAddress(studentDto.getAddress());
        student.setCountry(studentDto.getCountry());
        student.setEmail(studentDto.getEmail());
        student.setName(studentDto.getName());
        student.setTelNumber(studentDto.getTelNumber());
        student.setUsername(studentDto.getUsername());
        student.setUserRole(studentDto.getUserRole());

        student.setCreatedDate(currentTimestamp);

        studentService.create(student);
        return new ModelAndView("redirect:" + "/student/");
    }

    @DeleteMapping("/delete/{id}")
    public void deleteById(@PathVariable long id){
        studentService.deleteById(id);
        returnStartPage();
    }

    @GetMapping("/{id}")
    public Student getStudentById(@PathVariable long id){
        return studentService.getById(id);
    }

    @GetMapping("/export/pdf")
    public void exportToPDF(HttpServletResponse response) throws DocumentException, IOException {
        response.setContentType("application/pdf");
        DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
        String currentDateTime = dateFormatter.format(new Date());

        String headerKey = "Content-Disposition";
        String headerValue = "attachment; filename=users_" + currentDateTime + ".pdf";
        response.setHeader(headerKey, headerValue);

        List<Student> listUsers = studentService.getAll();

        UserPDFExporter exporter = new UserPDFExporter(listUsers);
        exporter.export(response);

    }
}
