package uz.customs.webappmathtask.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity

public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(nullable = false)
    private String name;

    private String username;

    private String email;

    private String telNumber;

    private String address;

    private String country;

    private String userRole;

    private String fileName;

    private String filePath;

    private String fileType;

    private String fileSize;

    private Timestamp createdDate;
}
