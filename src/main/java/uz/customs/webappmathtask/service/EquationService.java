package uz.customs.webappmathtask.service;

import com.google.gson.Gson;
import org.json.JSONObject;
import org.springframework.stereotype.Service;
import uz.customs.webappmathtask.dto.EquationRequestDto;
import uz.customs.webappmathtask.dto.EquationResponseDto;
import uz.customs.webappmathtask.entity.EquationHistory;
import uz.customs.webappmathtask.repository.EquationHistoryRepository;

import javax.validation.constraints.Null;
import java.util.List;

@Service
public class EquationService{
    private final
    EquationHistoryRepository equationHistoryRepository;

    public EquationService(EquationHistoryRepository equationHistoryRepository) {
        this.equationHistoryRepository = equationHistoryRepository;
    }

    public EquationHistory create(EquationRequestDto equationRequestDto) {
        double a = equationRequestDto.getA();
        double b = equationRequestDto.getB();
        double c = equationRequestDto.getC();
        double d = b*b - 4*a*c;
        EquationResponseDto equationResponseDto = new EquationResponseDto();
        if(a == b && b == c && c == 0){
            equationResponseDto.setStatus(-1);
            equationResponseDto.setX1(null);
            equationResponseDto.setX2(null);
        } else if (a == 0 && b != 0) {
            equationResponseDto.setStatus(1);
            equationResponseDto.setX1(-c / b);
            equationResponseDto.setX2(null);
        } else if (d < 0 || a == b && b == 0){
            equationResponseDto.setStatus(0);
            equationResponseDto.setX1(null);
            equationResponseDto.setX2(null);
        }else if (d == 0){
            equationResponseDto.setStatus(1);
            equationResponseDto.setX1(-b/(2*a));
//            equationResponseDto.setX2(null);
        }else{
            equationResponseDto.setStatus(2);
            equationResponseDto.setX1((-b+Math.pow(d, 1.0/2))/(2*a));
            equationResponseDto.setX2((-b-Math.pow(d, 1.0/2))/(2*a));
        }
        EquationHistory equationHistory = new EquationHistory();
        equationHistory.setA(a);
        equationHistory.setB(b);
        equationHistory.setC(c);
        equationHistory.setX1(equationResponseDto.getX1());
        equationHistory.setX2(equationResponseDto.getX2());
        equationHistory.setStatus(equationResponseDto.getStatus());

        return equationHistoryRepository.save(equationHistory);
    }

    public List<EquationHistory> getAll() {
        return equationHistoryRepository.findAllByOrderByIdDesc();
    }

    public void deleteById(long id){
        equationHistoryRepository.deleteById(id);
    }


}
