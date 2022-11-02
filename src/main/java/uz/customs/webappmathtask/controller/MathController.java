package uz.customs.webappmathtask.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import uz.customs.webappmathtask.dto.EquationRequestDto;
import uz.customs.webappmathtask.entity.EquationHistory;
import uz.customs.webappmathtask.service.EquationService;

import java.util.List;


@RestController
public class MathController {

    @Autowired
    EquationService equationService;

    @GetMapping("/")
    public ModelAndView returnStartPage(){
        List<EquationHistory> equationHistoryList = equationService.getAll();
        ModelAndView modelAndView = new ModelAndView("index");
        modelAndView.addObject("histories", equationHistoryList);
        modelAndView.addObject("size", equationHistoryList.size());

        return modelAndView;
    }


    @PostMapping("/solve-equation")
    public ResponseEntity<EquationHistory> solveEquation(@RequestBody EquationRequestDto requestDto){
        EquationHistory equationHistory = equationService.create(requestDto);
        return new ResponseEntity<>(equationHistory, HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    private void deleteEquation(@PathVariable long id){
        equationService.deleteById(id);
        returnStartPage();
    }

}
