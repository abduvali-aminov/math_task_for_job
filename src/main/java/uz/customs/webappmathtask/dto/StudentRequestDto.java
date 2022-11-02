package uz.customs.webappmathtask.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class StudentRequestDto {
    private long id;
    private String name;
    private String username;
    private String email;
    private String telNumber;
    private String address;
    private String country;
    private String userRole;
}
