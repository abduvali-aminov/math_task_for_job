package uz.customs.webappmathtask.controller;

import java.util.ArrayList;
import java.util.Random;
import java.util.Scanner;

public class SortArray {
    static void print(int[][] mat) {
        for (int i = 0; i < mat.length; i++) {
            if (i % 2 == 0) {
                for (int j = 0; j < mat[0].length; j++){
//                    System.out.print(mat[i][j] + "\t");
                }
            }
            else {
                for (int j = mat[0].length - 1; j >= 0; j--){}
//                    System.out.print(mat[i][j] + "\t");
            }
//            System.out.println();
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Random rand = new Random();
        int n = sc.nextInt();
        int m = sc.nextInt();
        int [][] arr = new int[n][m];
        for (int i=0; i<n; i++){
            for (int j=0; j<m; j++){
                arr[i][j] = rand.nextInt(99);
            }
        }

        sort(arr);
        print(arr);
    }

    public static void sort(int[][] arr) {
        int i, j, temp;
        int n=arr.length;
        int m=arr[0].length;
        for (i=0; i<n*m-1; ++i) {
            for (j=0; j < n*m - 1 - i; ++j) {
                if (arr[j/m][j % m] > arr[(j+1)/m][(j+1) % m]) {
                    temp = arr[(j + 1) / m][(j + 1) % m];
                    arr[(j + 1) / m][(j + 1) % m] = arr[j / m][j % m];
                    arr[j / m][j % m] = temp;
                }
            }
        }
    }
}

