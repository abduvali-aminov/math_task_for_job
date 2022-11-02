package uz.customs.webappmathtask.controller;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import uz.customs.webappmathtask.entity.EquationHistory;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("/array")
public class SortArrayController {

    @GetMapping("/")
    public ModelAndView returnStartPage(){
        return new ModelAndView("task2");
    }

    @PostMapping("/sort")
    public int[][] sortArray(@RequestBody String str) {
        System.out.println(str);
        String[] strArr = str.split(" ");
        int size = strArr.length;
        int[] arr = new int[size];
        for (int i = 0; i < size; i++) {
            arr[i] = Integer.parseInt(strArr[i]);
        }
        int count = 0;
        Arrays.sort(arr);
        int[][] arr2d = new int[5][6];
        for (int i = 4; i >= 0; i--) {
            for (int j = 5; j >= 0; j--) {
                if (i % 2 == 1) {
                    arr2d[i][5 - j] = arr[count++];
                } else {
                    arr2d[i][j] = arr[count++];
                }
            }
        }
        return arr2d;
//        return new ResponseEntity<>(equationHistory, HttpStatus.OK);
    }

}
