package uz.customs.webappmathtask.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class EquationResponseDto {
    private Double x1;
    private Double x2;
    private int status;     //  0   --> Not root,
                            //  1   --> One root,
                            //  2   --> Two roots.
}
