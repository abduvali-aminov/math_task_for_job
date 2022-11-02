package uz.customs.webappmathtask.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EquationRequestDto {
    private double a;
    private double b;
    private double c;
}
